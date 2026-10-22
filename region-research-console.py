"""Bounded local command queue for one temporary research session."""
import asyncio
import importlib.util
import json
import time
from dataclasses import asdict
from pathlib import Path

BASE = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location('m8transport', BASE / 'verify-temporary-root.py')
transport = importlib.util.module_from_spec(spec)
spec.loader.exec_module(transport)
from samsung_tv_root.root_agent import RootAgentConnection

QUEUE = BASE / 'region-research-queue'
QUEUE.mkdir(exist_ok=True)
original_execute = RootAgentConnection.execute
counter = 0

async def recorded_execute(self, command, timeout):
    global counter
    counter += 1
    print(f'Executing research query {counter}', flush=True)
    result = await original_execute(self, command, timeout)
    record = {'command': command, **asdict(result)}
    (QUEUE / f'result-{counter:04d}.json').write_text(json.dumps(record, ensure_ascii=False, indent=2))
    print(f'Query {counter} finished: exit={result.exit_code}', flush=True)
    return result

def pending_commands():
    seen = set()
    deadline = time.monotonic() + 180
    while time.monotonic() < deadline:
        if (QUEUE / 'STOP').exists():
            return
        batches = sorted(QUEUE.glob('batch-*.json'))
        for batch in batches:
            if batch.name in seen:
                continue
            seen.add(batch.name)
            for command in json.loads(batch.read_text()):
                yield command
            deadline = time.monotonic() + 180
        time.sleep(0.25)

async def main():
    transport.archive_root.find_sdb = lambda: Path('AeroTizen-native-Python-transport')
    transport.archive_root.SdbClient = transport.transport_factory
    RootAgentConnection.execute = recorded_execute
    try:
        result = await transport.archive_root.probe(
            '192.168.100.104', model='LS32BM80BUCXXF',
            payloads=BASE / 'root-payloads31', accept_timeout=25,
            commands=pending_commands(),
        )
        (BASE / 'region-live-session.json').write_text(json.dumps(result, ensure_ascii=False, indent=2))
        print('Research session closed; cleanup:', result.get('staging_cleaned'), flush=True)
    finally:
        for client in transport.instances:
            for gate in client.gates:
                with transport.Sdb(client.tv_host).connect() as s:
                    s.shell('0 appinstall tpk new.tpk`rmdir${IFS}' + gate + '`.tpk')

asyncio.run(main())
