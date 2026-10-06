#!/bin/bash
# ZERO COMMANDS launcher
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
pkill -f "android-codespace/scripts/daemon.sh" 2>/dev/null
pkill -f "android-codespace/scripts/auto.sh" 2>/dev/null
sleep 1
nohup setsid bash "$SCRIPT_DIR/daemon.sh" > /tmp/android.log 2>&1 < /dev/null &
disown
sleep 2
cat << 'EOF'
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  ✅ Android setup STARTED in background
  ⏱️  Wait 2-3 min, then open port 8006
  📱 PORTS tab -> click "Open Android Phone"
  📄 Logs: /tmp/android.log
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF