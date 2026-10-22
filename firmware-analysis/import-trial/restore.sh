#!/bin/bash
TRIAL=/home/owner/share/tmp/sdk_tools/m8-import-trial
/usr/bin/dotnet "$TRIAL/ImportTrial.dll" restore-import
rc=$?
printf 'RESTORE_EXIT=%s\n' "$rc"
exit "$rc"
