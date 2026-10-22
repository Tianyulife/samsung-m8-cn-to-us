from pathlib import Path
import importlib.util,hashlib,json
BASE=Path(__file__).resolve().parents[2];B=Path(__file__).parent;ROOT=BASE/'firmware-analysis/US-1720.7/rootfs/root'
files=['/usr/apps/comss/bin/comss','/usr/apps/org.tizen.ssoservice/bin/ssoservice','/usr/lib/libiotcon.so.0.4.0','/usr/lib/libsystem-info-external-plugin.so','/usr/bin/fconfigd','/usr/bin/fw-update-service','/usr/bin/fw-usb-update-service','/usr/bin/emps/empPepperPlugins/productinfo/libproductinfo.so','/usr/apps/org.tizen.factory/bin/factory']
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m);c=m.AeroTransport(None,'192.168.100.104',timeout=12)
try:
 r=c.capture('sha256sum '+' '.join(files),timeout=25)
 (B/'live-consumer-hashes.txt').write_text(r.output)
 result=[]
 for line in r.output.splitlines():
  parts=line.split()
  if len(parts)==2 and parts[1] in files:
   h=hashlib.sha256((ROOT/parts[1].lstrip('/')).read_bytes()).hexdigest()
   result.append({'file':parts[1],'sha256':parts[0],'matches_official_1720_7':h==parts[0]})
 (B/'consumer-hash-comparison.json').write_text(json.dumps(result,indent=2))
 print('Compared',len(result),'files; all matched:',len(result)==len(files) and all(x['matches_official_1720_7'] for x in result))
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
