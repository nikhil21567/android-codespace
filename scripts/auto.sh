#!/bin/bash
set +e
mkdir -p /workspaces/.android-data
cd /workspaces/android-codespace 2>/dev/null || cd /workspaces
echo "[$(date)] Starting Android via Docker Compose..."
docker compose up -d 2>&1 | tee -a /tmp/android.log
sleep 5
if docker ps --format '{{.Names}}' | grep -q "android-phone"; then
    echo "ready" > /workspaces/.android-data/.status
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "  ✅ Android phone RUNNING on port 8006"
    echo "  📍 PORTS tab -> click 'Open Android Phone'"
    echo "  📱 Real Android 14 in browser!"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
else
    echo "failed" > /workspaces/.android-data/.status
    echo "❌ Android FAILED to start"
fi