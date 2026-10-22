#!/bin/bash
set -u
TRIAL=/home/owner/share/tmp/sdk_tools/m8-region-trial
/usr/bin/dotnet "$TRIAL/RegionTrial.dll" restore-cn
WAS_RC=$?
gdbus call --system --dest comss.server --object-path /comss/server --method comss.server.interface.comss_set_gpm_countrycode CN
COUNTRY_RC=$?
vconftool get db/comss/countrycode
for k in sastv idm soat; do vconftool get rtc/db/comss/gpmurl/$k; done
if [ "$WAS_RC" -eq 0 ] && [ "$COUNTRY_RC" -eq 0 ]; then
  echo RESTORE_COMMANDS_OK
else
  echo RESTORE_FAILED
  exit 1
fi
