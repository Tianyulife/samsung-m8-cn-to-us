from pathlib import Path
import importlib.util
BASE=Path(__file__).resolve().parents[2];B=BASE/'firmware-analysis/localset-trial'
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
try:
 cmd='set -e; TRIAL=/home/owner/share/tmp/sdk_tools/m8-localset-trial; state=$(/usr/bin/dotnet "$TRIAL/LocalSetTrial.dll" read); echo "$state"; echo "$state" | grep -q "^LocalSet enum rc=1 value=1$"; echo "$state" | grep -q "^PreventingImport uid761 rc=1 value=13$"; vconftool get db/comss/countrycode | grep "value = US (String)"; touch "$TRIAL/keep-localset"; test -f "$TRIAL/keep-localset"; echo AUTO_RESTORE_CANCELLED_BY_MARKER; cat "$TRIAL/watchdog-state"; for k in sastv idm; do vconftool get rtc/db/comss/gpmurl/$k; done'
 r=c.capture(cmd,timeout=25);(B/'final-state.txt').write_text(r.output);print(r.output)
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
