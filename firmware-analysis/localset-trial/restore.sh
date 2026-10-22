#!/bin/bash
TRIAL=/home/owner/share/tmp/sdk_tools/m8-localset-trial
/usr/bin/dotnet "$TRIAL/LocalSetTrial.dll" restore
rc=$?
printf 'RESTORE_EXIT=%s\n' "$rc"
exit "$rc"
