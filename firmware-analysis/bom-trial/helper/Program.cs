using System;
using System.IO;
using System.Text;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
class Program {
 const string F="/usr/lib/libfactory-interface-WW.so";
 const string Original="LS32BM80BUCXXF",Target="LS32BM80BUNXGO";
 [DllImport(F)] static extern int factory_get_bom_model([Out] byte[] b,ref int n);
 [DllImport(F)] static extern int factory_write_bom_model(string model,int length);
 [DllImport(F)] static extern int factory_get_str_data(int uid,IntPtr buffer);
 [DllImport(F)] static extern int factory_get_data(int uid,out int value);
 [DllImport(F)] static extern int factory_get_model_enum(out int value);
 [DllImport(F,EntryPoint="_ZN10FCNvramMap11GetInstanceEv")] static extern IntPtr NvramGet();
 [DllImport(F,EntryPoint="_ZN10FCNvramMap4ReadEjjPhPi")] static extern int NvramRead(IntPtr self,uint address,uint count,[Out]byte[] b,out int status);
 static string Bom() { byte[] b=new byte[256];int n=b.Length;int rc=factory_get_bom_model(b,ref n);if(rc!=1)throw new Exception("BOM_READ_FAILED rc="+rc);int end=Array.IndexOf(b,(byte)0);return Encoding.ASCII.GetString(b,0,end<0?b.Length:end); }
 static string ShortModel() { IntPtr p=Marshal.AllocHGlobal(4096);try {for(int i=0;i<4096;i++)Marshal.WriteByte(p,i,0);if(factory_get_str_data(0x238f,p)!=1)throw new Exception("SHORT_READ_FAILED");return Marshal.PtrToStringAnsi(IntPtr.Add(p,4));}finally{Marshal.FreeHGlobal(p);} }
 static void Read() { int local,import,model;int lr=factory_get_data(194,out local),ir=factory_get_data(761,out import),mr=factory_get_model_enum(out model);Console.WriteLine("BOM="+Bom());Console.WriteLine("SHORT_MODEL="+ShortModel());Console.WriteLine("FACTORY_MODEL rc="+mr+" value="+model);Console.WriteLine("LOCAL_SET rc="+lr+" value="+local);Console.WriteLine("PREVENT_IMPORT rc="+ir+" value="+import); }
 static void Guard() {int local,import;if(ShortModel()!="M80B"||factory_get_data(194,out local)!=1||local!=1||factory_get_data(761,out import)!=1||import!=0)throw new Exception("BASELINE_GUARD_FAILED");}
 static byte[] Backup() {IntPtr nv=NvramGet();if(nv==IntPtr.Zero)throw new Exception("NVRAM_INSTANCE_FAILED");byte[] all=new byte[65536];for(int i=0;i<all.Length;i+=4096){byte[] b=new byte[4096];int st;int rc=NvramRead(nv,(uint)i,4096,b,out st);if(rc!=0||st<0)throw new Exception("NVRAM_READ_FAILED");Array.Copy(b,0,all,i,b.Length);}return all;}
 static int Main(string[] a) {try {
  if(a.Length==1&&a[0]=="read"){Read();return 0;}
  if(a.Length==2&&a[0]=="backup"){if(File.Exists(a[1]))throw new Exception("REFUSE_OVERWRITE");byte[] b=Backup();File.WriteAllBytes(a[1],b);Console.WriteLine("BACKUP_SHA256="+BitConverter.ToString(SHA256.Create().ComputeHash(b)).Replace("-","").ToLower());Read();return 0;}
  if(a.Length==1&&(a[0]=="preflight-original"||a[0]=="set-target"||a[0]=="restore")) {
   Guard();string before=Bom(),target=a[0]=="set-target"?Target:Original;
   if(a[0]!="restore"&&before!=Original)throw new Exception("EXPECTED_ORIGINAL");
   if(before!=Original&&before!=Target)throw new Exception("UNKNOWN_MODEL_REFUSE_WRITE");
   Console.WriteLine("BEFORE="+before);
   int rc=factory_write_bom_model(target,target.Length);Console.WriteLine("WRITE rc="+rc+" target="+target);
   string after=Bom();Read();if(rc!=1||after!=target)throw new Exception("WRITE_OR_READBACK_FAILED");Guard();return 0;
  }
  return 2;
 }catch(Exception e){Console.WriteLine("ERROR="+e.Message);return 3;}}
}
