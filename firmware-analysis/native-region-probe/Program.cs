using System;
using System.Runtime.InteropServices;
class Program {
 const string Lib="/usr/lib/libcapi-system-info.so.0.2.1";
 [DllImport(Lib)] static extern int system_info_get_custom_int(string key, out int value);
 [DllImport(Lib)] static extern int system_info_get_custom_bool(string key, out byte value);
 [DllImport(Lib)] static extern int system_info_get_platform_string(string key, out IntPtr value);
 [DllImport(Lib)] static extern int system_info_get_value_string(int key, out IntPtr value);
 [DllImport("libc.so.6")] static extern void free(IntPtr value);
 static void Main() {
  int n; byte b; int rc;
  IntPtr region; rc=system_info_get_value_string(0x7532,out region);
  Console.WriteLine("system_info[0x7532] rc="+rc+" value="+(rc!=0||region==IntPtr.Zero?"<unavailable>":Marshal.PtrToStringAnsi(region)));
  if(rc==0&&region!=IntPtr.Zero)free(region);
  rc=system_info_get_custom_int("com.samsung/featureconf/product.product_type",out n);
  Console.WriteLine("product.product_type rc="+rc+" value="+n);
  foreach(string suffix in new[]{"was","pdss","account","homedatacontrolservice","security.fkp"}) {
   rc=system_info_get_custom_bool("com.samsung/featureconf/"+suffix+".use_china_server",out b);
   Console.WriteLine(suffix+".use_china_server rc="+rc+" value="+b);
  }
  foreach(string key in new[]{"http://tizen.org/system/model_name"}) {
   IntPtr p; rc=system_info_get_platform_string(key,out p);
   Console.WriteLine(key+" rc="+rc+" value="+(rc!=0||p==IntPtr.Zero?"<unavailable>":Marshal.PtrToStringAnsi(p)));
   if(rc==0&&p!=IntPtr.Zero)free(p);
  }
 }
}
