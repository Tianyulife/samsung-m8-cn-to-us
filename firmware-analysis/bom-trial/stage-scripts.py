from pathlib import Path
import importlib.util
BASE=Path(__file__).resolve().parents[2];B=Path(__file__).parent
s=importlib.util.spec_from_file_location('m8',BASE/'verify-temporary-root.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
c=m.AeroTransport(None,'192.168.100.104',timeout=12)
for name in ['restore.sh','watchdog.sh','apply.sh']:c.push(B/name,'/home/owner/share/tmp/sdk_tools/m8-bom-trial/'+name)
print('Staged three trial scripts; no factory writes')
