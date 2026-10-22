#!/bin/bash
TRIAL=/home/owner/share/tmp/sdk_tools/m8-bom-trial
echo "WATCHDOG_ARMED pid=$$" > "$TRIAL/watchdog-state"
sleep 600
if [ -f "$TRIAL/restored-and-verified" ]; then
 echo CANCELLED_AFTER_VERIFIED_RESTORE >> "$TRIAL/watchdog-state"
 exit 0
fi
for attempt in 1 2 3; do
 cat "$TRIAL/restore.sh" | /bin/bash >> "$TRIAL/auto-restore.log" 2>&1
 rc=$?
 echo "AUTO_RESTORE attempt=$attempt exit=$rc" >> "$TRIAL/watchdog-state"
 if [ "$rc" -eq 0 ]; then exit 0; fi
 sleep 5
done
