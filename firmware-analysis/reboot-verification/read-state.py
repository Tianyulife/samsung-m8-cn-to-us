from pathlib import Path
import importlib.util,sys
BASE=Path(__file__).resolve().parents[2]
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
cmd='''echo BOOT_ID; cat /proc/sys/kernel/random/boot_id; echo UPTIME; cat /proc/uptime; echo FIRMWARE; cat /etc/info.ini; echo FACTORY; /usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-import-trial/ImportTrial.dll read; echo WAS_FLAG; /usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-region-trial/RegionTrial.dll; echo COUNTRY; vconftool get db/comss/countrycode; echo ENDPOINTS; for k in sastv idm; do vconftool get rtc/db/comss/gpmurl/$k; done; echo WATCHDOGS; for t in region localset import; do d=/home/owner/share/tmp/sdk_tools/m8-$t-trial; ls "$d"/keep-*; cat "$d/watchdog-state"; done; echo REBOOT_TOOLS; command -v systemd-run; command -v systemctl; echo LIBRARY; sha256sum /usr/lib/libfactory-interface-WW.so'''
try:
 r=c.capture(cmd,timeout=30); print(r.output); (Path(__file__).parent/sys.argv[1]).write_text(r.output)
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
