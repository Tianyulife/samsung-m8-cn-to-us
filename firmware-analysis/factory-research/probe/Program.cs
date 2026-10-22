using System;
using System.Runtime.InteropServices;
using System.Text;
class Program {
 const string F="/usr/lib/libfactory-interface-WW.so";
 const string D="/usr/lib/libfactory-data-config.so.00.00.0057";
 [DllImport(F)] static extern int factory_get_item_with_unique_id(uint uid,IntPtr buffer);
 [DllImport(F)] static extern int factory_get_data(int uid,out int value);
 [DllImport(F)] static extern int factory_get_localset_enum(out int value);
 [DllImport(F)] static extern int factory_convert_ext_localset_to_store_data(int value,out int store);
 [DllImport(F)] static extern int factory_get_localset_str(int store,StringBuilder value);
 [DllImport(D)] static extern int fd_config_check_unused_localset(int value,out int unused);
 [DllImport("/usr/lib/libcapi-system-info.so.0.2.1")] static extern int system_info_get_custom_bool(string key,out byte value);
 static void Main() {
  byte flag;int rc=system_info_get_custom_bool("com.samsung/featureconf/wizard.region_setting_page_suppport",out flag);
  Console.WriteLine("region_setting_page_suppport rc="+rc+" value="+flag);
  int current;rc=factory_get_localset_enum(out current);Console.WriteLine("CURRENT_GLOBAL_LOCALSET rc="+rc+" value="+current);
  foreach(int uid in new[]{194,761}) { int raw;int ok=factory_get_data(uid,out raw);Console.WriteLine("RAW_FACTORY uid="+uid+" rc="+ok+" value="+raw); }
  IntPtr item=Marshal.AllocHGlobal(4096);
  for(int n=0;n<4096;n++)Marshal.WriteByte(item,n,0);
  rc=factory_get_item_with_unique_id(761,item);
  Console.WriteLine("FILTER_PROPERTY_ITEM rc="+rc);
  if(rc==1) {
   for(int n=0;n<6;n++)Console.WriteLine("ITEM_INT["+n+"]="+Marshal.ReadInt32(item,n*4));
   byte[] raw=new byte[512];Marshal.Copy(item,raw,0,raw.Length);
   Console.WriteLine("ITEM_RAW="+Convert.ToBase64String(raw));
  }
  Marshal.FreeHGlobal(item);
  for(int store=0;store<=76;store++) {
   StringBuilder name=new StringBuilder(64);int named=factory_get_localset_str(store,name);
   if(named==1)Console.WriteLine("VISIBLE_LOCALSET store="+store+" name="+name);
  }
 }
}
