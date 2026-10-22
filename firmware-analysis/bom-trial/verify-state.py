from pathlib import Path
import importlib.util,base64,hashlib,json,sys,urllib.request
BASE=Path(__file__).resolve().parents[2];B=Path(__file__).parent;phase=sys.argv[1]
assert phase in ['after-target','after-restore','after-retained']
assert not (B/(phase+'.bin')).exists(),'refuse overwrite evidence'
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12);remote='/home/owner/share/tmp/sdk_tools/m8-bom-trial'
try:
 cmd='set -e; umask 077; /usr/bin/dotnet '+remote+'/BomTrial.dll backup '+remote+'/'+phase+'.bin; echo BEGIN_NVRAM; base64 '+remote+'/'+phase+'.bin; echo END_NVRAM; /usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-model-read/ModelIdentity.dll; /usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-region-trial/RegionTrial.dll; vconftool get db/comss/countrycode; for k in sastv idm; do vconftool get rtc/db/comss/gpmurl/$k; done; cat '+remote+'/watchdog-state'
 if phase=='after-retained':cmd+='; test -f '+remote+'/restored-and-verified && echo PREVIOUS_AUTO_RESTORE_CANCELLED; test -f '+remote+'/retained-blue-us-model && echo RETAIN_MARKER_PRESENT'
 r=c.capture(cmd,timeout=25);assert '[exit:0]' in r.output
 head,rest=r.output.split('BEGIN_NVRAM\n',1);encoded,tail=rest.split('END_NVRAM',1);raw=base64.b64decode(encoded)
 h=hashlib.sha256(raw).hexdigest();assert len(raw)==65536 and ('BACKUP_SHA256='+h) in head
 p=B/(phase+'.bin');p.write_bytes(raw);p.chmod(0o600)
 (B/(phase+'.txt')).write_text(head+tail)
 baseline_name='retained-before.bin' if phase=='after-retained' else 'native-eeprom-before.bin'
 before=(B/baseline_name).read_bytes();changes=[{'offset':hex(i),'before':a,'after':b} for i,(a,b) in enumerate(zip(before,raw)) if a!=b]
 outside=[x for x in changes if not(0xf321<=int(x['offset'],16)<0xf335)]
 d=json.load(urllib.request.urlopen('http://192.168.100.104:8001/api/v2/',timeout=5)).get('device',{})
 expected='LS32BM80BUNXGO' if phase in ['after-target','after-retained'] else 'LS32BM80BUCXXF'
 meta={'phase':phase,'baseline_file':baseline_name,'size':len(raw),'sha256':h,'bom':raw[0xf321:0xf335].split(b'\0',1)[0].decode(),'changes':changes,'outside_bom_record_changes':len(outside),'network':{k:d[k] for k in ['modelName','model','type','OS'] if k in d}}
 p=B/(phase+'.json');p.write_text(json.dumps(meta,indent=2));p.chmod(0o600)
 print(head+tail);print(json.dumps({k:v for k,v in meta.items() if k!='changes'},ensure_ascii=False))
 assert meta['bom']==expected and not outside
 assert 'FACTORY_MODEL rc=1 value=957' in head and 'LOCAL_SET rc=1 value=1' in head and 'PREVENT_IMPORT rc=1 value=0' in head
 if phase=='after-restore':assert not changes
 print('VERIFIED '+phase+' changed_bytes='+str(len(changes)))
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
