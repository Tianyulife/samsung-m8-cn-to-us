from pathlib import Path
import subprocess,re,struct
from elftools.elf.elffile import ELFFile
ROOT=Path('firmware-analysis/US-1720.7/rootfs/root');B=Path('firmware-analysis/model-identity/asm');B.mkdir(exist_ok=True)
work=[('system-model','usr/lib/libsystem-info-external-plugin.so','system_info_get_model'),('smartmonitor-series','usr/lib/libsystem-info-external-plugin.so','system_info_get_model_series_info_smartmonitor'),('sw-model','usr/lib/libsystem-info-external-plugin.so','system_info_get_sw_version_model'),('comss-system','usr/apps/comss/bin/comss','_ZN12ICSystemInfo13GetSystemInfoER13_PRODUCT_INFO'),('comss-auth','usr/apps/comss/bin/comss','_ZN7CAIAuth17SetAuthSystemInfoEPK13_PRODUCT_INFO'),('fconfig-model','usr/bin/fconfigd','get_model')]
work.extend([
 ('comss-soat-request','usr/apps/comss/bin/comss','_ZN13CCSJsonParser21GetSOATRequestBodyXmlB5cxx11Ev'),
 ('comss-auth-info','usr/apps/comss/bin/comss','addr:0x14670:0x14870'),
 ('sso-bom','usr/apps/org.tizen.ssoservice/bin/ssoservice','addr:0x4d3c0:0x4d600'),
 ('productinfo-model','usr/bin/emps/empPepperPlugins/productinfo/libproductinfo.so','_ZN25ProductInfoMessageHandler8getModelERKN2pp13VarDictionaryE'),
 ('iot-model-metadata','usr/lib/libiotcon.so.0.4.0','addr:0x1fc80:0x1ffb0'),
 ('ssm-model-metadata','usr/apps/com.samsung.tizen.samsung-service-manager/bin/samsung-service-manager','addr:0x5abf0:0x5ad00'),
 ('firmware-version','usr/bin/fw-update-service','_ZN21FWUpdateSymbolManager18getSWVersionStringEv'),
])
for label,file,sym in work:
 p=ROOT/file
 if sym.startswith('addr:'):
  _,start,end=sym.split(':');start=int(start,16);end=int(end,16)
 else:
  with p.open('rb') as handle:
   elf=ELFFile(handle);symbol=next(s for s in elf.get_section_by_name('.dynsym').iter_symbols() if s.name==sym and s['st_shndx']!='SHN_UNDEF');start=symbol['st_value']&~1;end=start+symbol['st_size']
 a=subprocess.check_output(['/opt/homebrew/opt/llvm/bin/llvm-objdump','-d','--triple=thumbv7-linux-gnueabi','--start-address='+hex(start),'--stop-address='+hex(end),str(p)],text=True)
 with p.open('rb') as f:
  e=ELFFile(f)
  def data(addr,n=300):
   for seg in e.iter_segments():
    if seg['p_type']=='PT_LOAD' and seg['p_vaddr']<=addr<seg['p_vaddr']+seg['p_filesz']:
     f.seek(seg['p_offset']+addr-seg['p_vaddr']);return f.read(n)
   return b''
  regs={};out=[]
  for line in a.splitlines():
   m=re.search(r'^\s*([0-9a-f]+):.*\bldr(?:\.w)?\s+(r\d+), \[pc,.*@ 0x([0-9a-f]+)',line)
   if m:
    raw=data(int(m[3],16),4)
    if len(raw)==4:regs[m[2]]=(int(m[1],16),struct.unpack('<I',raw)[0])
   m=re.search(r'^\s*([0-9a-f]+):.*\badd\s+(r\d+), pc',line)
   if m and m[2] in regs:
    old,offset=regs.pop(m[2]);addr=int(m[1],16)
    if addr-old<100:
     st=data((offset+addr+4)&0xffffffff).split(b'\0')[0]
     if 1<len(st)<295 and all(32<=c<127 for c in st):line+=' ; STR '+repr(st.decode())
   out.append(line)
 (B/(label+'.asm')).write_text('\n'.join(out)+'\n')
print('Annotated',len(work),'functions')
