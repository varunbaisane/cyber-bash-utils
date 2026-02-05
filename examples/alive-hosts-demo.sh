#!/usr/bin/env bash

echo "====================================="
echo " alive-hosts demo"
echo "====================================="
echo

echo "[*] 1. ICMP liveness check (localhost)"
echo "-------------------------------------"
alive-hosts -t 127.0.0.1

echo
echo "[*] 2. TCP liveness check (public IPs)"
echo "-------------------------------------"
echo "[+] Checking Google DNS (8.8.8.8)"
alive-hosts -t 8.8.8.8 --tcp

echo
echo "[+] Checking Cloudflare DNS (1.1.1.1)"
alive-hosts -t 1.1.1.1 --tcp

echo
echo "[*] Note:"
echo "    Private lab networks may block ICMP/TCP probes."
echo "    No output usually means the probe was blocked."
