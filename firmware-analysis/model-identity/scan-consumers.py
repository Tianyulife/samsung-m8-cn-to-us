from pathlib import Path
from elftools.elf.elffile import ELFFile
import json,subprocess
ROOT=Path('firmware-analysis/US-1720.7/rootfs/root');B=Path('firmware-analysis/model-identity')
terms=['factory_get_bom_model','factory_get_model_enum','factory_get_model_str','system_info_get_value_string','system_info_get_platform_string']
r=subprocess.run(['rg','-a','-l','--no-messages','|'.join(terms),str(ROOT/'usr')],capture_output=True,text=True)
rows=[]
for file in r.stdout.splitlines():
 p=Path(file)
 try:
  with p.open('rb') as f:
   if f.read(4)!=b'\x7fELF':continue
   f.seek(0);elf=ELFFile(f);sec=elf.get_section_by_name('.dynsym')
   imports=[]
   if sec:
    imports=[s.name for s in sec.iter_symbols() if s['st_shndx']=='SHN_UNDEF' and (s.name in terms or 'BomModel' in s.name)]
   if imports:rows.append({'file':str(p.relative_to(ROOT)),'imports':imports})
 except Exception as e: print('ERROR',file,type(e).__name__)
(B/'consumer-imports.json').write_text(json.dumps(rows,indent=2))
print('Total candidates with imports:',len(rows))
for row in rows:
 direct=[x for x in row['imports'] if x.startswith('factory_') or 'BomModel' in x]
 if direct:print(row['file'],direct)
