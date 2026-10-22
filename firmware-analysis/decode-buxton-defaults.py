import ctypes as C,base64,sqlite3,json
from pathlib import Path
G=C.CDLL('/opt/homebrew/lib/libglib-2.0.dylib')
for n,args,restype in [('g_variant_type_new',[C.c_char_p],C.c_void_p),('g_variant_new_from_data',[C.c_void_p,C.c_void_p,C.c_size_t,C.c_int,C.c_void_p,C.c_void_p],C.c_void_p),('g_variant_print',[C.c_void_p,C.c_int],C.c_void_p),('g_variant_unref',[C.c_void_p],None),('g_free',[C.c_void_p],None)]:
 f=getattr(G,n);f.argtypes=args;f.restype=restype
t=G.g_variant_type_new(b'v');rows={}
for v in ['CN-1651.1','US-1720.7']:
 c=sqlite3.connect('file:'+str(Path(__file__).parent/v/'rootfs/root/etc/buxton2/system.db')+'?mode=ro',uri=True)
 result={}
 for k in ['db/sso/sa_user_country_code','db/sso/sa_user_country_code_2alpha','db/sso/sa_user_country_code_3alpha','db/sso/pre_sa_user_country_code','db/wizard/country_value','db/comss/countrycode','db/system/country']:
  row=c.execute('select data from buxton where key=?',(k,)).fetchone()
  if not row:result[k]=None;continue
  raw=base64.b64decode(row[0]);buf=C.create_string_buffer(raw);p=G.g_variant_new_from_data(t,buf,len(raw),0,None,None);s=G.g_variant_print(p,1);result[k]=C.string_at(s).decode();G.g_free(s);G.g_variant_unref(p)
 rows[v]=result
print(json.dumps(rows,indent=2));(Path(__file__).parent/'decoded-defaults.json').write_text(json.dumps(rows,indent=2))
