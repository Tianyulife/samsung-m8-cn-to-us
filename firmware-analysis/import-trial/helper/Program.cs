using System;
using System.IO;
using System.Text;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
class Program {
 const string F="/usr/lib/libfactory-interface-WW.so";
 [DllImport(F)] static extern int factory_get_data(int uid,out int value);
 [DllImport(F)] static extern int factory_set_data(int uid,int value);
 [DllImport(F)] static extern int factory_get_localset_str(int store,StringBuilder value);
 [DllImport(F)] static extern int factory_get_localset_enum(out int value);
 [DllImport(F,EntryPoint="_ZN10FCNvramMap11GetInstanceEv")] static extern IntPtr NvramGet();
 [DllImport(F,EntryPoint="_ZN10FCNvramMap4ReadEjjPhPi")] static extern int NvramRead(IntPtr self,uint address,uint count,[Out]byte[] buffer,out int result);
 static int State() {
  int a,b,c;int ar=factory_get_data(194,out a),br=factory_get_data(761,out b),cr=factory_get_localset_enum(out c);
  Console.WriteLine("LocalSet uid194 rc="+ar+" value="+a);
  Console.WriteLine("PreventingImport uid761 rc="+br+" value="+b);
  Console.WriteLine("LocalSet enum rc="+cr+" value="+c);
  return ar==1&&br==1&&cr==1?0:2;
 }
 static int Main(string[] args) {
  if(State()!=0)return 2;
  if(args.Length==1&&args[0]=="read")return 0;
  if(args.Length==2&&args[0]=="backup") {
   IntPtr nv=NvramGet();if(nv==IntPtr.Zero)return 3;
   byte[] all=new byte[65536];
   for(int offset=0;offset<all.Length;offset+=4096) {
    byte[] chunk=new byte[4096];int status;int rc=NvramRead(nv,(uint)offset,4096,chunk,out status);
    if(rc!=0||status<0) { Console.WriteLine("NVRAM_READ_FAILED offset="+offset+" rc="+rc+" status="+status);return 4; }
    Array.Copy(chunk,0,all,offset,chunk.Length);
   }
   File.WriteAllBytes(args[1],all);
   Console.WriteLine("NVRAM_BACKUP size="+all.Length+" sha256="+BitConverter.ToString(SHA256.Create().ComputeHash(all)).Replace("-","").ToLower());
   Console.WriteLine("NVRAM_FACTORY LocalSet_byte="+all[0x3e23]+" PreventImport_byte="+all[0x3e65]);
   return 0;
  }
  if(args.Length==1&&args[0]=="list") {
   for(int n=0;n<=76;n++) { var name=new StringBuilder(64);int rc=factory_get_localset_str(n,name);if(rc==1)Console.WriteLine("VISIBLE_LOCALSET store="+n+" name="+name); }
   return 0;
  }
  if(args.Length==1&&(args[0]=="set-zero"||args[0]=="restore-import"||args[0]=="preflight")) {
   int local,prevent;
   if(factory_get_data(194,out local)!=1||local!=1||factory_get_data(761,out prevent)!=1)return 5;
   if(prevent!=0&&prevent!=13)return 6;
   if(args[0]=="set-zero"&&prevent!=13)return 7;
   int target=args[0]=="set-zero"?0:13;
   int rc=factory_set_data(761,target);Console.WriteLine("PREVENT_IMPORT_SET rc="+rc+" target="+target);
   int read;int readRc=factory_get_data(761,out read);Console.WriteLine("PREVENT_IMPORT_READBACK rc="+readRc+" value="+read);
   State();return rc==1&&readRc==1&&read==target?0:8;
  }
  return 9;
 }
}
