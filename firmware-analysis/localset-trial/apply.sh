#!/bin/bash
set -e
TRIAL=/home/owner/share/tmp/sdk_tools/m8-localset-trial
/usr/bin/dotnet "$TRIAL/LocalSetTrial.dll" preflight-write-original
rm -f "$TRIAL/keep-localset" "$TRIAL/watchdog-state"
nohup /bin/bash < "$TRIAL/watchdog.sh" > "$TRIAL/watchdog-launch.log" 2>&1 3>&- 4>&- 5>&- 6>&- 7>&- 8>&- 9>&- &
guard=$!
sleep 1
kill -0 "$guard"
grep WATCHDOG_ARMED "$TRIAL/watchdog-state"
trap 'cat "$TRIAL/restore.sh" | /bin/bash' ERR
/usr/bin/dotnet "$TRIAL/LocalSetTrial.dll" set-us
/usr/bin/dotnet "$TRIAL/LocalSetTrial.dll" read
vconftool get db/comss/countrycode
for k in sastv idm; do vconftool get rtc/db/comss/gpmurl/$k; done
echo LOCALSET_TRIAL_APPLIED
