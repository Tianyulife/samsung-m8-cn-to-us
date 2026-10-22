#!/bin/bash
TRIAL=/home/owner/share/tmp/sdk_tools/m8-bom-trial
/usr/bin/dotnet "$TRIAL/BomTrial.dll" restore
rc=$?
echo RESTORE_EXIT=$rc
exit "$rc"
