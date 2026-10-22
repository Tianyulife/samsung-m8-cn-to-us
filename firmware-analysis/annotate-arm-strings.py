import re,struct,subprocess
from pathlib import Path
from elftools.elf.elffile import ELFFile
for variant in ['CN-1651.1','US-1720.7']:
 path=Path(__file__).parent/variant/'rootfs/root/usr/apps/comss/bin/comss'
 with path.open('rb') as f:
  elf=ELFFile(f)
  def data(addr,n=250):
   for seg in elf.iter_segments():
    if seg['p_type']=='PT_LOAD' and seg['p_vaddr']<=addr<seg['p_vaddr']+seg['p_filesz']:
     f.seek(seg['p_offset']+addr-seg['p_vaddr']);return f.read(n)
   return b''
  for label,symbol in [('china-selector','_ZN12ICSystemInfo17GetUseChinaServerEv'),('gpm-selector','_ZN12CHttpRequest24m_GetGPMServerUrlAndHostERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_'),('system-info-string','_ZN12ICSystemInfo19GetSystemInfoByTypeE17system_info_key_eRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE')]:
   asm=subprocess.check_output(['objdump','-d','--triple=thumbv7-linux-gnueabi','--disassemble-symbols='+symbol,str(path)],text=True)
   regs={};out=[]
   for line in asm.splitlines():
    m=re.search(r'^\s*([0-9a-f]+):.*\bldr(?:\.w)?\s+(r\d+), \[pc,.*@ 0x([0-9a-f]+)',line)
    if m:
     raw=data(int(m[3],16),4)
     if len(raw)==4:regs[m[2]]=(int(m[1],16),struct.unpack('<I',raw)[0])
    m=re.search(r'^\s*([0-9a-f]+):.*\badd\s+(r\d+), pc',line)
    if m and m[2] in regs:
     old,offset=regs.pop(m[2]);addr=int(m[1],16)
     if addr-old<80:
      s=data((offset+addr+4)&0xffffffff).split(b'\0')[0]
      if 1<len(s)<240 and all(32<=c<127 for c in s):line+=' ; STR '+repr(s.decode())
    out.append(line)
   (Path(__file__).parent/variant/(label+'.asm')).write_text('\n'.join(out)+'\n')
