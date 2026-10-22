import json,collections,sqlite3,tarfile,xml.etree.ElementTree as ET
from pathlib import Path
B=Path(__file__).parent;V=['CN-1651.1','US-1720.7'];roots={v:B/v/'rootfs/root' for v in V}
apps={};archives={}
for v in V:
 rows={}
 for p in (roots[v]/'usr/apps').glob('*/tizen-manifest.xml'):
  try:
   e=ET.parse(p).getroot(); ns={'t':'http://tizen.org/ns/packages'}
   rows[e.get('package') or p.parent.name]={'version':e.get('version'),'labels':sorted({x.text for x in e.findall('.//t:label',ns) if x.text}),'executables':sorted({x.get('exec') for x in e.iter() if x.get('exec')})}
  except ET.ParseError:pass
 apps[v]=rows
out={'native_manifest_count':{v:len(apps[v]) for v in V},'packages_only_cn':{k:apps[V[0]][k] for k in apps[V[0]].keys()-apps[V[1]].keys()},'packages_only_us':{k:apps[V[1]][k] for k in apps[V[1]].keys()-apps[V[0]].keys()}}
(B/'component-comparison.json').write_text(json.dumps(out,ensure_ascii=False,indent=2));(B/'initial-data-manifests.json').write_text(json.dumps(archives,indent=2))
print(json.dumps(out,ensure_ascii=False,indent=2))
