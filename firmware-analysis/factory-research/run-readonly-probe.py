import importlib.util
from pathlib import Path
BASE=Path(__file__).resolve().parents[2]
spec=importlib.util.spec_from_file_location('m8transport',BASE/'verify-temporary-root.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
remote='/home/owner/share/tmp/sdk_tools/m8-factory-readonly'
try:
 c.capture('mkdir -p '+remote,timeout=15)
 for p in (BASE/'firmware-analysis/factory-research/probe/out').glob('*'):
  if p.suffix in ['.dll','.json']:c.push(p,remote+'/'+p.name)
 r=c.capture('/usr/bin/dotnet '+remote+'/FactoryReadOnly.dll',timeout=25)
 print(r.output)
 (BASE/'firmware-analysis/factory-research/live-native-read.txt').write_text(r.output)
finally:
 try: c.capture('rm -rf '+remote,timeout=12)
 except Exception as e: print('cleanup:',repr(e))
 for gate in c.gates:
  try:
   with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
  except Exception as e:print('gate cleanup:',repr(e))
