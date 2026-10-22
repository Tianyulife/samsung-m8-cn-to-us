#!/bin/bash
set -e
TRIAL=/home/owner/share/tmp/sdk_tools/m8-bom-trial
sha256sum "$TRIAL/BomTrial.dll" | grep -q '^3f011c537a0e35ef6c1fe45dae78ce85927a82b42272e0bc701803aa4ee4acb4 '
sha256sum /usr/lib/libfactory-interface-WW.so | grep -q '^be719e56b94d71f9f895951d1407b92154d4c0604f784a3d4d95ee97e124f08d '
test -f "$TRIAL/restored-and-verified"
/usr/bin/dotnet "$TRIAL/BomTrial.dll" read | grep '^BOM=LS32BM80BUCXXF$'
/usr/bin/dotnet "$TRIAL/BomTrial.dll" read | grep '^FACTORY_MODEL rc=1 value=957$'
/usr/bin/dotnet "$TRIAL/BomTrial.dll" backup "$TRIAL/retained-prewrite.bin"
sha256sum "$TRIAL/retained-prewrite.bin" | grep -q '^030a5fd3f8aa132f12d75a83c678c6f351d6dcb5735f2d496634f6484ad0b533 '
trap 'cat "$TRIAL/restore.sh" | /bin/bash' ERR
/usr/bin/dotnet "$TRIAL/BomTrial.dll" set-target
/usr/bin/dotnet "$TRIAL/BomTrial.dll" backup "$TRIAL/retained-after-root.bin"
sha256sum "$TRIAL/retained-after-root.bin" | grep -q '^47589f3fc96068c07988d1d2d252f21ca39f4703499410c1e71a8f75e8d3a4a3 '
/usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-model-read/ModelIdentity.dll
/usr/bin/dotnet /home/owner/share/tmp/sdk_tools/m8-region-trial/RegionTrial.dll
vconftool get db/comss/countrycode
for k in sastv idm; do vconftool get rtc/db/comss/gpmurl/$k; done
test -f "$TRIAL/restored-and-verified"
touch "$TRIAL/retained-blue-us-model"
echo RETAINED_BLUE_US_BOM_NO_NEW_AUTO_ROLLBACK
