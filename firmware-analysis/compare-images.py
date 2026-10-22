import csv
import hashlib
import json
import re
import sqlite3
from pathlib import Path
import xml.etree.ElementTree as ET

BASE = Path(__file__).resolve().parent
VARIANTS = ['CN-1651.1', 'US-1720.7']
ROOTS = {v: BASE / v / 'rootfs/root' for v in VARIANTS}

def manifest(root):
    result = {}
    for p in root.rglob('*'):
        if p.is_file() and not p.is_symlink():
            with p.open('rb') as f:
                digest = hashlib.file_digest(f, 'sha256').hexdigest()
            result[str(p.relative_to(root))] = {'size': p.stat().st_size, 'sha256': digest}
    return result

manifests = {v: manifest(ROOTS[v]) for v in VARIANTS}
for v, data in manifests.items():
    (BASE / v / 'file-manifest.json').write_text(json.dumps(data, indent=2))
cn, us = (manifests[v] for v in VARIANTS)
same = {p for p in cn.keys() & us.keys() if cn[p]['sha256'] == us[p]['sha256']}
changed = sorted(p for p in cn.keys() & us.keys() if cn[p]['sha256'] != us[p]['sha256'])
only_cn, only_us = sorted(cn.keys() - us.keys()), sorted(us.keys() - cn.keys())
summary = {'files': {v: len(manifests[v]) for v in VARIANTS},
           'identical': len(same), 'changed': len(changed),
           'only_cn': len(only_cn), 'only_us': len(only_us)}
with (BASE / 'file-comparison.csv').open('w') as f:
    writer = csv.writer(f)
    writer.writerow(['path', 'status', 'cn_size', 'us_size', 'cn_sha256', 'us_sha256'])
    for p in sorted(cn.keys() | us.keys()):
        a, b = cn.get(p, {}), us.get(p, {})
        status = 'same' if p in same else 'changed' if p in cn and p in us else 'only_cn' if p in cn else 'only_us'
        writer.writerow([p, status, a.get('size'), b.get('size'), a.get('sha256'), b.get('sha256')])

def strings(path):
    return {s.decode() for s in re.findall(rb'[\x20-\x7e]{6,}', path.read_bytes())}

region_re = re.compile(r'country|local.?set|region|china|infolink|gpm|samsungqbe|samsungcloudsolution', re.I)
targets = ['usr/apps/comss/bin/comss', 'usr/lib/libfactory-interface-WW.so',
           'usr/lib/libep-system-api-systeminfo.so', 'usr/lib/libtvs-config.so',
           'usr/bin/emps/empPepperPlugins/productinfo/libproductinfo.so']
target_results = {}
for rel in targets:
    a, b = [strings(ROOTS[v] / rel) for v in VARIANTS]
    shared = sorted(s for s in a & b if region_re.search(s))
    target_results[rel] = {'region_strings_shared': shared,
                           'region_strings_only_cn': sorted(s for s in a - b if region_re.search(s)),
                           'region_strings_only_us': sorted(s for s in b - a if region_re.search(s))}
(BASE / 'region-string-comparison.json').write_text(json.dumps(target_results, indent=2))

defaults = {}
for v in VARIANTS:
    c = sqlite3.connect('file:' + str(ROOTS[v] / 'etc/buxton2/system.db') + '?mode=ro', uri=True)
    defaults[v] = dict(c.execute('SELECT key,data FROM buxton'))
    c.close()
selected = sorted(k for k in defaults[VARIANTS[0]].keys() | defaults[VARIANTS[1]].keys()
                  if re.search(r'country|localset|gpmurl|cisblock', k, re.I))
summary['selected_default_keys'] = len(selected)
summary['selected_default_keys_identical'] = [k for k in selected if defaults[VARIANTS[0]].get(k) == defaults[VARIANTS[1]].get(k)]
summary['selected_default_keys_different'] = [k for k in selected if defaults[VARIANTS[0]].get(k) != defaults[VARIANTS[1]].get(k)]

xml = {}
for v in VARIANTS:
    xml[v] = {e.get('name'): e.text for e in ET.parse(ROOTS[v]/'etc/config/model-config.xml').iter('key')}
summary['model_config_changes'] = {k: [xml[v].get(k) for v in VARIANTS]
                                   for k in xml[VARIANTS[0]].keys() | xml[VARIANTS[1]].keys()
                                   if xml[VARIANTS[0]].get(k) != xml[VARIANTS[1]].get(k)}
summary['version_caveat'] = 'Different firmware builds: differences cannot automatically be attributed to sales region.'
(BASE / 'comparison-summary.json').write_text(json.dumps(summary, ensure_ascii=False, indent=2))
print(json.dumps({k: v for k,v in summary.items() if k not in ['model_config_changes', 'selected_default_keys_identical']}, ensure_ascii=False, indent=2))
