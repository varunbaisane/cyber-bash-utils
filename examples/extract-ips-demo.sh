#!/usr/bin/env bash

echo "====================================="
echo " extract-ips demo"
echo "====================================="
echo
echo "[*] Scenario:"
echo "    Extract IP addresses from noisy text (logs / scan output)"
echo

cat << 'EOF' | extract-ips -u
[INFO] Connection from 10.10.10.5 accepted
[WARN] Failed login from 256.1.1.1
[INFO] Using fallback DNS 8.8.8.8
[DEBUG] Health check from 127.0.0.1
[INFO] Duplicate seen: 8.8.8.8
[ERROR] Corrupt entry: 999.999.999.999
EOF
