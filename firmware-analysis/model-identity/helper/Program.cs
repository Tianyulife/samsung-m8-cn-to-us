using System;
using System.Text;
using System.Runtime.InteropServices;
class Program {
 [DllImport("/usr/lib/libfactory-interface-WW.so")] static extern int factory_get_bom_model([Out] byte[] buffer,ref int length);
 [DllImport("/usr/lib/libcapi-system-info.so.0.2.1")] static extern int system_info_get_platform_string(string key,out IntPtr value);
 [DllImport("libc.so.6")] static extern void free(IntPtr value);
 [DllImport("/usr/lib/libfactory-interface-WW.so")] static extern int factory_get_str_data(int uid,IntPtr buffer);
 [DllImport("/usr/lib/libcapi-system-info.so.0.2.1")] static extern int system_info_get_value_string(int key,out IntPtr value);
 static int Main() {
  foreach(int uid in new[]{0x238f,0x2392}) {
   IntPtr buf=Marshal.AllocHGlobal(4096);
   for(int i=0;i<4096;i++)Marshal.WriteByte(buf,i,0);
   int result=factory_get_str_data(uid,buf);
   Console.WriteLine("FACTORY_STRING uid=0x"+uid.ToString("x")+" rc="+result+" length="+Marshal.ReadInt32(buf)+" value="+Marshal.PtrToStringAnsi(IntPtr.Add(buf,4)));
   Marshal.FreeHGlobal(buf);
  }
  foreach(int key in new[]{0,0x80,0x124}) {
  IntPtr bom;int result2=system_info_get_value_string(key,out bom);
  Console.WriteLine("SYSTEM_INFO key=0x"+key.ToString("x")+" rc="+result2+" value="+(result2==0&&bom!=IntPtr.Zero?Marshal.PtrToStringAnsi(bom):"<unavailable>"));
  if(result2==0&&bom!=IntPtr.Zero)free(bom);
  }
  byte[] b=new byte[256];int n=b.Length;
  int rc=factory_get_bom_model(b,ref n);
  int end=Array.IndexOf(b,(byte)0);if(end<0)end=b.Length;
  Console.WriteLine("BOM_MODEL rc="+rc+" length="+n+" value="+Encoding.ASCII.GetString(b,0,end));
  IntPtr p;rc=system_info_get_platform_string("http://tizen.org/system/model_name",out p);
  Console.WriteLine("SYSTEM_MODEL rc="+rc+" value="+(rc==0&&p!=IntPtr.Zero?Marshal.PtrToStringAnsi(p):"<unavailable>"));
  if(rc==0&&p!=IntPtr.Zero)free(p);
  return 0;
 }
}
