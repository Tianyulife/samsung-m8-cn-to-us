import importlib.util
from pathlib import Path
BASE=Path(__file__).resolve().parents[2]
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
try:
 cmd='/usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-localset-trial/LocalSetTrial.dll read; vconftool get db/comss/countrycode; sha256sum /usr/lib/libfactory-interface-WW.so /home/owner/share/tmp/sdk_tools/m8-localset-trial/LocalSetTrial.dll'
 r=c.capture(cmd,timeout=25);print(r.output);(BASE/'firmware-analysis/localset-trial/resume-state.txt').write_text(r.output)
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
