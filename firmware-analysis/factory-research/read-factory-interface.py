from pathlib import Path
import importlib.util
BASE=Path(__file__).resolve().parents[2]
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
try:
 cmd='gdbus introspect --system --dest org.tizen.tv.factory-service --object-path / --recurse'
 r=c.capture(cmd,timeout=25)
 (BASE/'firmware-analysis/factory-research/live-introspection.txt').write_text(r.output)
 print('Introspection saved; bytes:',len(r.output),'exit:',r.output.rsplit('[exit:',1)[-1][:10])
 print('\n'.join(line for line in r.output.splitlines() if any(x in line for x in ['node ','interface org.tizen','LocalSet','BomModel','ModelStr','Region','GetItem','SetItem'])))
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
