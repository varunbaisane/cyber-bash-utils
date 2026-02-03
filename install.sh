#!/usr/bin/env bash

set -euo pipefail

SCRIPT_PATH="$(readlink -f "${BASH_SOURCE[0]}")"
REPO_DIR="$(cd "$(dirname "$SCRIPT_PATH")" && pwd)"

BIN_SRC="$REPO_DIR/bin"
BIN_DST="$HOME/.local/bin"

echo "[*] Installing cyber-bash-utils commands..."

mkdir -p "$BIN_DST"

for cmd in "$BIN_SRC"/*; do
    name="$(basename "$cmd")"
    chmod +x "$cmd"
    ln -sf "$cmd" "$BIN_DST/$name"
    echo "  [+] Installed $name"
done

echo "[+] Installation complete"
