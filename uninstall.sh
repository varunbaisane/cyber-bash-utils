#!/usr/bin/env bash

set -euo pipefail

BIN_DST="$HOME/.local/bin"

echo "[*] Uninstalling cyber-bash-utils commands..."

for name in alive-hosts port-scan http-probe extract-ips failed-logins rev-shell-gen; do
    if [ -L "$BIN_DST/$name" ]; then
        rm -f "$BIN_DST/$name"
        echo "  [-] Removed $name"
    fi
done

echo "[+] Uninstall complete"
