from pathlib import Path
import importlib.util,json,urllib.request
BASE=Path(__file__).resolve().parents[2];B=Path(__file__).parent
out=B/'after-retained-reboot.txt';metaout=B/'after-retained-reboot.json'
assert not out.exists() and not metaout.exists(),'refuse overwrite evidence'
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
cmd='''set -e; echo BOOT_ID; cat /proc/sys/kernel/random/boot_id; echo UPTIME; cat /proc/uptime; /usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-bom-trial/BomTrial.dll read; /usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-model-read/ModelIdentity.dll; /usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-region-trial/RegionTrial.dll; vconftool get db/comss/countrycode; for k in sastv idm; do vconftool get rtc/db/comss/gpmurl/$k; done; test -f /home/owner/share/tmp/sdk_tools/m8-bom-trial/restored-and-verified; test -f /home/owner/share/tmp/sdk_tools/m8-bom-trial/retained-blue-us-model; echo RETAIN_AND_CANCEL_MARKERS_PRESENT'''
try:
 r=c.capture(cmd,timeout=30);out.write_text(r.output);print(r.output)
 assert '[exit:0]' in r.output
 for expected in ['BOM=LS32BM80BUNXGO','FACTORY_MODEL rc=1 value=957','LOCAL_SET rc=1 value=1','PREVENT_IMPORT rc=1 value=0','SYSTEM_MODEL rc=0 value=LS32BM80BUNXGO','was.before rc=0 value=0','value = US (String)']:
  assert expected in r.output,expected
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
d=json.load(urllib.request.urlopen('http://192.168.100.104:8001/api/v2/',timeout=5)).get('device',{})
filtered={k:d[k] for k in ['modelName','model','type','OS'] if k in d}
lines=r.output.splitlines();meta={'boot_id':lines[lines.index('BOOT_ID')+1],'uptime':lines[lines.index('UPTIME')+1],'network':filtered}
metaout.write_text(json.dumps(meta,ensure_ascii=False,indent=2));print(json.dumps(meta,ensure_ascii=False))
