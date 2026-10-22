import importlib.util
from pathlib import Path
BASE=Path(__file__).resolve().parents[2]
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
try:
 cmd='TRIAL=/home/owner/share/tmp/sdk_tools/m8-region-trial; /usr/bin/dotnet "$TRIAL/RegionTrial.dll"; vconftool get db/comss/countrycode; for k in sastv idm soat; do vconftool get rtc/db/comss/gpmurl/$k; done; test -f "$TRIAL/keep-us" && echo AUTO_ROLLBACK_CANCELLED_BY_MARKER; cat "$TRIAL/watchdog-state" "$TRIAL/watchdog-launch.log" "$TRIAL/auto-restore.log" 2>/dev/null; true'
 r=c.capture(cmd,timeout=25);print(r.output);(BASE/'firmware-analysis/region-trial/observed-state.txt').write_text(r.output)
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
