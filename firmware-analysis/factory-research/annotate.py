import re,struct,subprocess
from pathlib import Path
from elftools.elf.elffile import ELFFile
B=Path(__file__).resolve().parents[1]
lib=B/'CN-1651.1/rootfs/root/usr/lib/libfactory-interface-WW.so'
def annotate(path,asm):
 with path.open('rb') as f:
  elf=ELFFile(f)
  def data(addr,n=350):
   for seg in elf.iter_segments():
    if seg['p_type']=='PT_LOAD' and seg['p_vaddr']<=addr<seg['p_vaddr']+seg['p_filesz']:
     f.seek(seg['p_offset']+addr-seg['p_vaddr']);return f.read(n)
   return b''
  regs={};out=[]
  for line in asm.splitlines():
   m=re.search(r'^\s*([0-9a-f]+):.*\bldr(?:\.w)?\s+(r\d+), \[pc,.*@ 0x([0-9a-f]+)',line)
   if m:
    raw=data(int(m[3],16),4)
    if len(raw)==4:regs[m[2]]=(int(m[1],16),struct.unpack('<I',raw)[0])
   m=re.search(r'^\s*([0-9a-f]+):.*\badd\s+(r\d+), pc',line)
   if m and m[2] in regs:
    old,offset=regs.pop(m[2]);addr=int(m[1],16)
    if addr-old<100:
     s=data((offset+addr+4)&0xffffffff).split(b'\0')[0]
     if s and len(s)<350 and all(32<=c<127 for c in s):line+=' ; STR '+repr(s.decode())
   out.append(line)
  return '\n'.join(out)+'\n'
for p in Path(__file__).parent.glob('factory*.asm'):
 p.write_text(annotate(lib,p.read_text()))
with (B/'CN-1651.1/rootfs/root/usr/bin/TIFSDaemon').open('rb') as f:
 elf=ELFFile(f)
 names=sorted({s.name for sec in elf.iter_sections() if sec['sh_type'] in ['SHT_DYNSYM','SHT_SYMTAB'] for s in sec.iter_symbols() if any(k in s.name for k in ['SetLocalSet','t_ExecuteLocalSet','GetLocalSet','WriteBomModel']) and s['st_shndx']!='SHN_UNDEF'})
 print('Daemon symbols',names)
 for n in names:
  path=B/'CN-1651.1/rootfs/root/usr/bin/TIFSDaemon'
  asm=subprocess.check_output(['objdump','-d','--triple=thumbv7-linux-gnueabi','--disassemble-symbols='+n,str(path)],text=True)
  (Path(__file__).parent/(n+'.asm')).write_text(annotate(path,asm))
