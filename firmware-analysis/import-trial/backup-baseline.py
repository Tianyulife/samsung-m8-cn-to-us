from pathlib import Path
import importlib.util,base64,hashlib,json
BASE=Path(__file__).resolve().parents[2];B=BASE/'firmware-analysis/import-trial'
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
try:
 cmd='set -e; umask 077; TRIAL=/home/owner/share/tmp/sdk_tools/m8-import-trial; /usr/bin/dotnet "$TRIAL/ImportTrial.dll" backup "$TRIAL/after.bin"; sha256sum "$TRIAL/after.bin"; base64 "$TRIAL/after.bin"; rm "$TRIAL/after.bin"'
 r=c.capture(cmd,timeout=25);lines=r.output.splitlines();(B/'backup-readback.txt').write_text(r.output);(B/'backup-readback.txt').chmod(0o600)
 assert '[exit:0]' in r.output
 h=next(i for i,line in enumerate(lines) if '  /home/owner/' in line and len(line.split()[0])==64)
 data=base64.b64decode(''.join(line for line in lines[h+1:] if line and not line.startswith('[exit:')))
 assert len(data)==65536 and hashlib.sha256(data).hexdigest()==lines[h].split()[0]
 out=B/'native-eeprom-before.bin';out.write_bytes(data);out.chmod(0o600)
 assert data[0x3e23]==1 and data[0x3e65]==13
 print('Baseline verified: 65536 bytes, Local Set storage=1, Preventing Import storage=13; sha256='+hashlib.sha256(data).hexdigest())
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
