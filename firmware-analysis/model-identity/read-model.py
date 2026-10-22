from pathlib import Path
import importlib.util,json,urllib.request
BASE=Path(__file__).resolve().parents[2];B=Path(__file__).parent
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
remote='/home/owner/share/tmp/sdk_tools/m8-model-read'
try:
 print(c.capture('mkdir -p '+remote,timeout=15).output)
 for p in (B/'helper/out').glob('*'):
  if p.suffix in ['.dll','.json']:c.push(p,remote+'/'+p.name)
 r=c.capture('/usr/bin/dotnet '+remote+'/ModelIdentity.dll; /usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-import-trial/ImportTrial.dll read; /usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-region-trial/RegionTrial.dll; vconftool get db/comss/countrycode',timeout=20)
 (B/'live-model-read.txt').write_text(r.output);print(r.output)
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
d=json.load(urllib.request.urlopen('http://192.168.100.104:8001/api/v2/',timeout=5)).get('device',{})
filtered={k:d[k] for k in ['modelName','model','type','OS'] if k in d}
(B/'network-model-read.json').write_text(json.dumps(filtered,ensure_ascii=False,indent=2));print(json.dumps(filtered,ensure_ascii=False))
