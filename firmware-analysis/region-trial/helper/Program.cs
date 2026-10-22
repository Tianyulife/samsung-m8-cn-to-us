using System;
using System.Runtime.InteropServices;
class Program {
 const string Key="com.samsung/featureconf/was.use_china_server";
 [DllImport("/usr/lib/libcapi-system-info.so.0.2.1")] static extern int system_info_get_custom_bool(string key,out byte value);
 [DllImport("/usr/lib/libfconfig.so")] static extern int fconfig_set_bool(string key,byte value);
 static int Main(string[] args) {
  byte value; int rc=system_info_get_custom_bool(Key,out value);
  Console.WriteLine("was.before rc="+rc+" value="+value);
  if(rc!=0)return 2;
  if(args.Length==1&&(args[0]=="set-overseas"||args[0]=="restore-cn")) {
   byte target=(byte)(args[0]=="restore-cn"?1:0);
   if(value!=target) { rc=fconfig_set_bool(Key,target); Console.WriteLine("was.set rc="+rc+" target="+target);if(rc!=0)return 3; }
   rc=system_info_get_custom_bool(Key,out value);
   Console.WriteLine("was.after rc="+rc+" value="+value);
   return rc==0&&value==target?0:4;
  }
  return args.Length==0?0:5;
 }
}
