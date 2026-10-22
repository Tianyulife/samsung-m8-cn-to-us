import importlib.util
from pathlib import Path
BASE=Path(__file__).resolve().parents[2]
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
try:
 cmd='for k in upgrade_version upgrade_verified_successfully upgrade_verified_successfully_int; do vconftool get db/menu/support/softwareupdate/$k; done; vconftool get db/menu/support/softwareupdate/upgrade_info_data | grep -oE "T-[A-Z0-9]+|[0-9]{4}\\.[0-9]+" | head -12; test -f /home/owner/share/tmp/sdk_tools/m8-region-trial/keep-us && echo AUTO_ROLLBACK_CANCELLED_BY_MARKER; true'
 r=c.capture(cmd,timeout=25);print(r.output);(BASE/'firmware-analysis/region-trial/update-candidate.txt').write_text(r.output)
finally:
 for gate in c.gates:
  with m.Sdb(c.tv_host,timeout=8).connect() as s:s.shell('0 appinstall tpk new.tpk`rmdir${IFS}'+gate+'`.tpk')
