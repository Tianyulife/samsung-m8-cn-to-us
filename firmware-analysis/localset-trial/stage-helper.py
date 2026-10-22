from pathlib import Path
import importlib.util
BASE=Path(__file__).resolve().parents[2]
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
remote='/home/owner/share/tmp/sdk_tools/m8-localset-trial'
try:
 print(c.capture('mkdir -p '+remote,timeout=15).output)
 for p in (BASE/'firmware-analysis/localset-trial/helper/out').glob('*'):
  if p.suffix in ['.dll','.json']:c.push(p,remote+'/'+p.name)
 print(c.capture('/usr/bin/dotnet '+remote+'/LocalSetTrial.dll read',timeout=20).output)
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
