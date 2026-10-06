#!/bin/bash
# Background daemon
exec >> /tmp/android.log 2>&1
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
AUTO="$SCRIPT_DIR/auto.sh"
echo "[DAEMON] Started at $(date)"
while true; do
    if ! docker ps --format '{{.Names}}' | grep -q "android-phone"; then
        echo "[$(date)] [DAEMON] Android not running, starting..."
        bash "$AUTO"
    fi
    sleep 30
done