from pathlib import Path
import importlib.util,base64,hashlib,json
BASE=Path(__file__).resolve().parents[2];B=Path(__file__).parent
assert not (B/'native-eeprom-before.bin').exists(),'refuse overwrite baseline'
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12);remote='/home/owner/share/tmp/sdk_tools/m8-bom-trial'
try:
 print(c.capture('mkdir -p '+remote,timeout=15).output)
 for p in (B/'helper/out').glob('*'):
  if p.suffix in ['.dll','.json']:c.push(p,remote+'/'+p.name)
 r=c.capture('set -e; umask 077; /usr/bin/dotnet '+remote+'/BomTrial.dll backup '+remote+'/baseline.bin; echo BEGIN_NVRAM; base64 '+remote+'/baseline.bin; echo END_NVRAM',timeout=25)
 assert '[exit:0]' in r.output
 head,rest=r.output.split('BEGIN_NVRAM\n',1);encoded=rest.split('END_NVRAM',1)[0]
 raw=base64.b64decode(encoded);h=hashlib.sha256(raw).hexdigest()
 assert len(raw)==65536 and ('BACKUP_SHA256='+h) in head
 assert raw[0xf321:0xf321+14]==b'LS32BM80BUCXXF' and raw[0x3e23]==1 and raw[0x3e65]==0
 p=B/'native-eeprom-before.bin';p.write_bytes(raw);p.chmod(0o600)
 (B/'baseline-state.txt').write_text(head)
 meta={'size':len(raw),'sha256':h,'bom':'LS32BM80BUCXXF','bom_offset':'0xf321','localset':raw[0x3e23],'prevent_import':raw[0x3e65],'helper_sha256':hashlib.sha256((B/'helper/out/BomTrial.dll').read_bytes()).hexdigest()}
 (B/'baseline.json').write_text(json.dumps(meta,indent=2));print(head);print(json.dumps(meta))
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
