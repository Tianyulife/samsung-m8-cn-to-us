#!/bin/bash
TRIAL=/home/owner/share/tmp/sdk_tools/m8-region-trial
printf '%s\n' "WATCHDOG_ARMED pid=$$" > "$TRIAL/watchdog-state"
sleep 600
if [ -e "$TRIAL/keep-us" ]; then
  echo CANCELLED >> "$TRIAL/watchdog-state"
  exit 0
fi
cat "$TRIAL/restore-cn.sh" | /bin/bash > "$TRIAL/auto-restore.log" 2>&1
printf 'RESTORE_EXIT=%s\n' "$?" >> "$TRIAL/watchdog-state"
