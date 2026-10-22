#!/bin/bash
set -e
TRIAL=/home/owner/share/tmp/sdk_tools/m8-bom-trial
sha256sum "$TRIAL/BomTrial.dll" | grep -q '^3f011c537a0e35ef6c1fe45dae78ce85927a82b42272e0bc701803aa4ee4acb4 '
sha256sum "$TRIAL/baseline.bin" | grep -q '^9288924e4b4f29ec0345bcf15fabd06bfc61eeee9fcd245bec661ba340035cdb '
sha256sum /usr/lib/libfactory-interface-WW.so | grep -q '^be719e56b94d71f9f895951d1407b92154d4c0604f784a3d4d95ee97e124f08d '
/usr/bin/dotnet "$TRIAL/BomTrial.dll" read | grep '^FACTORY_MODEL rc=1 value=957$'
/usr/bin/dotnet "$TRIAL/BomTrial.dll" preflight-original
/usr/bin/dotnet "$TRIAL/BomTrial.dll" backup "$TRIAL/preflight.bin"
cmp -s "$TRIAL/baseline.bin" "$TRIAL/preflight.bin"
echo ORIGINAL_WRITEBACK_STORAGE_UNCHANGED
rm -f "$TRIAL/restored-and-verified"
nohup /bin/bash < "$TRIAL/watchdog.sh" > "$TRIAL/watchdog-launch.log" 2>&1 3>&- 4>&- 5>&- 6>&- 7>&- 8>&- 9>&- &
guard=$!
sleep 1
kill -0 "$guard"
grep WATCHDOG_ARMED "$TRIAL/watchdog-state"
trap 'cat "$TRIAL/restore.sh" | /bin/bash' ERR
/usr/bin/dotnet "$TRIAL/BomTrial.dll" set-target
/usr/bin/dotnet "$TRIAL/BomTrial.dll" read | grep '^FACTORY_MODEL rc=1 value=957$'
/usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-model-read/ModelIdentity.dll
vconftool get db/comss/countrycode
for k in sastv idm; do vconftool get rtc/db/comss/gpmurl/$k; done
echo BOM_TRIAL_APPLIED
