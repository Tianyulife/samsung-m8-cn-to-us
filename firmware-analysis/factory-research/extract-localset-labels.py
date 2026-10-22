import re,struct,json
from pathlib import Path
from elftools.elf.elffile import ELFFile
B=Path(__file__).resolve().parents[1];result={}
for variant in ['CN-1651.1','US-1720.7']:
 p=B/variant/'rootfs/root/usr/bin/TIFSDaemon'
 asm=(B/'factory-research'/(variant+'-_ZN21FCStringForFactoryKey20m_MapValueToLocalSetEv.asm')).read_text()
 with p.open('rb') as f:
  e=ELFFile(f)
  def data(addr,n):
   for seg in e.iter_segments():
    if seg['p_type']=='PT_LOAD' and seg['p_vaddr']<=addr<seg['p_vaddr']+seg['p_filesz']:
     f.seek(seg['p_offset']+addr-seg['p_vaddr']);return f.read(n)
   return b''
  rows={};r2=None;label=None;key=None
  for line in asm.splitlines():
   m=re.search(r'\bldr(?:\.w)?\s+r2, \[pc,.*@ 0x([0-9a-f]+)',line)
   if m:
    raw=data(int(m[1],16),4)
    if len(raw)==4:r2=struct.unpack('<I',raw)[0]
   m=re.search(r'\bmovs?\s+r3, #0x([0-9a-f]+)',line)
   if m:key=int(m[1],16)
   m=re.search(r'\bsub(?:s|\.w)?\s+r1, r2, #0x([0-9a-f]+)',line)
   if m and r2 is not None:
    n=int(m[1],16);raw=data(r2-n,n)
    label=raw.decode() if raw and all(32<=c<127 for c in raw) else None
   if re.search(r'\bstr\s+r3, \[sp, #0x8\]',line) and key is not None and label:
    rows[key]=label
  result[variant]=rows
(B/'factory-research/localset-label-map.json').write_text(json.dumps(result,indent=2))
for v,rows in result.items():print(v,{k:name for k,name in rows.items() if name in ['NONE','US','CHI_DTV','KOR']},'parsed',len(rows))
