#!/bin/bash
TRIAL=/home/owner/share/tmp/sdk_tools/m8-localset-trial
printf 'WATCHDOG_ARMED pid=%s\n' "$$" > "$TRIAL/watchdog-state"
sleep 600
if [ -f "$TRIAL/keep-localset" ]; then
 echo CANCELLED >> "$TRIAL/watchdog-state"
 exit 0
fi
cat "$TRIAL/restore.sh" | /bin/bash > "$TRIAL/auto-restore.log" 2>&1
printf 'RESTORE_EXIT=%s\n' "$?" >> "$TRIAL/watchdog-state"
