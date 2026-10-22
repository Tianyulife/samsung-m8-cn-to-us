#!/bin/bash
set -e
TRIAL=/home/owner/share/tmp/sdk_tools/m8-region-trial
vconftool get db/comss/countrycode | grep 'value = CN (String)'
/usr/bin/dotnet "$TRIAL/RegionTrial.dll" restore-cn
rm -f "$TRIAL/keep-us" "$TRIAL/watchdog-state"
nohup /bin/bash < "$TRIAL/watchdog.sh" > "$TRIAL/watchdog-launch.log" 2>&1 &
GUARD=$!
sleep 1
kill -0 "$GUARD"
grep WATCHDOG_ARMED "$TRIAL/watchdog-state"
trap 'cat "$TRIAL/restore-cn.sh" | /bin/bash' ERR
/usr/bin/dotnet "$TRIAL/RegionTrial.dll" set-overseas
gdbus call --system --dest comss.server --object-path /comss/server --method comss.server.interface.comss_set_gpm_countrycode US
vconftool get db/comss/countrycode
sleep 4
for k in sastv idm soat; do vconftool get rtc/db/comss/gpmurl/$k; done
/usr/bin/dotnet "$TRIAL/RegionTrial.dll"
echo TRIAL_APPLIED
