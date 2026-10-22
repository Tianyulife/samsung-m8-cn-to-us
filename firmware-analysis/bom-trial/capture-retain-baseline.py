from pathlib import Path
import importlib.util,base64,hashlib,json
BASE=Path(__file__).resolve().parents[2];B=Path(__file__).parent
assert not(B/'retained-before.bin').exists()
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m);c=m.AeroTransport(None,'192.168.100.104',timeout=12)
try:
 r=c.capture('set -e; cat /home/owner/share/tmp/sdk_tools/m8-bom-trial/retained-before.bin | base64',timeout=25);assert '[exit:0]' in r.output
 raw=base64.b64decode(''.join(l for l in r.output.splitlines() if l and not l.startswith('[exit:')));assert len(raw)==65536
 p=B/'retained-before.bin';p.write_bytes(raw);p.chmod(0o600)
 before=(B/'native-eeprom-before.bin').read_bytes();offsets=[hex(i) for i,(a,b) in enumerate(zip(before,raw)) if a!=b]
 meta={'sha256':hashlib.sha256(raw).hexdigest(),'size':len(raw),'changes_from_trial_baseline_offsets':offsets,'bom':raw[0xf321:0xf335].split(b'\0')[0].decode(),'localset':raw[0x3e23],'prevent_import':raw[0x3e65]}
 (B/'retained-baseline.json').write_text(json.dumps(meta,indent=2));print(json.dumps(meta))
 assert meta['bom']=='LS32BM80BUCXXF' and meta['localset']==1 and meta['prevent_import']==0
 expected=bytearray(raw);expected[0xf321:0xf335]=b'LS32BM80BUNXGO'+b'\0'*6
 print('Expected target SHA256:',hashlib.sha256(expected).hexdigest())
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
