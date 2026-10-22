from pathlib import Path
import importlib.util
BASE=Path(__file__).resolve().parents[2]
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
try:
 cmd='gdbus call --system --dest org.tizen.tv.factory-service --object-path /TIFacSerObj --method org.tizen.tv.factoryservice.GetItem 401; gdbus call --system --dest org.tizen.tv.factory-service --object-path /TIFacSerObj --method org.tizen.tv.factoryservice.GetLocalSetListNo; vconftool get db/comss/countrycode'
 r=c.capture(cmd,timeout=25)
 (BASE/'firmware-analysis/factory-research/live-control-item.txt').write_text(r.output)
 print(r.output)
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
