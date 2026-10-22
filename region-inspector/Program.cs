using System;
using System.IO;
using System.Reflection;

class Program
{
    static int Main()
    {
        const string framework = "/usr/share/dotnet.tizen/framework/";
        AppDomain.CurrentDomain.AssemblyResolve += (sender, args) => {
            string path = framework + new AssemblyName(args.Name).Name + ".dll";
            return File.Exists(path) ? Assembly.LoadFrom(path) : null;
        };
        Assembly assembly = Assembly.LoadFrom(framework + "Tizen.TV.dll");
        foreach (string name in new [] { "Tizen.TV.SmartHubConfig", "Tizen.TV.Environment" })
        {
            Type type = assembly.GetType(name);
            if (type == null) { Console.WriteLine(name + " missing"); continue; }
            foreach (PropertyInfo property in type.GetProperties(BindingFlags.Public | BindingFlags.Static))
            {
                try { Console.WriteLine(name + "." + property.Name + " = " + property.GetValue(null)); }
                catch (Exception e) { Console.WriteLine(name + "." + property.Name + " ERROR " + (e.InnerException ?? e).Message); }
            }
        }
        Type environment = assembly.GetType("Tizen.TV.Environment");
        object config = environment.GetProperty("SmartHubConfig").GetValue(null);
        foreach (PropertyInfo property in config.GetType().GetProperties(BindingFlags.Public | BindingFlags.Instance))
        {
            try { Console.WriteLine("SmartHubConfig." + property.Name + " = " + property.GetValue(config)); }
            catch (Exception e) { Console.WriteLine("SmartHubConfig." + property.Name + " ERROR " + (e.InnerException ?? e).Message); }
        }
        return 0;
    }
}
