import sqlite3,lzma,json
from pathlib import Path
base=Path(__file__).parent
result={}
for variant in ['CN-1651.1','US-1720.7']:
 rows=[]
 for p in sorted((base/variant/'rootfs/root/etc/fconfig/delta').glob('*.db.xz')):
  c=sqlite3.connect(':memory:');c.deserialize(lzma.decompress(p.read_bytes()))
  cols=[r[1] for r in c.execute('pragma table_info(fc_table)')]
  for row in c.execute("select * from fc_table where key like '%use_china_server%' or key like '%product_type%'"):
   values=dict(zip(cols,row));nonnull={k:v for k,v in values.items() if v is not None and v!=''}
   rows.append({'file':p.name,'values':nonnull})
 result[variant]=rows
(base/'feature-delta-selectors.json').write_text(json.dumps(result,indent=2))
for k,rows in result.items():
 print(k,'matches',len(rows))
 for r in rows[:3]:print(r)
