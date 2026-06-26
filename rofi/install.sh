#!/usr/bin/env bash
#
# Install my rofi configuration.
#
# This only tracks MY customization: the main config and the active theme
# (windows11-list-dark). The full launcher / applet / powermenu collection
# comes from adi1090x's rofi project — install that separately if you want it
# (see README.md).
#
set -euo pipefail

CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/rofi"
THEME_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/rofi/themes"
SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

info() { printf '\033[1;34m[*]\033[0m %s\n' "$1"; }
ok()   { printf '\033[1;32m[✓]\033[0m %s\n' "$1"; }

# 1. Make sure rofi is installed
if ! command -v rofi >/dev/null 2>&1; then
  info "rofi not found — installing via apt"
  sudo apt-get update && sudo apt-get install -y rofi
fi

# 2. Back up any existing config, then install ours
mkdir -p "$CONFIG_DIR" "$THEME_DIR"
if [[ -f "$CONFIG_DIR/config.rasi" ]]; then
  info "Backing up existing config.rasi → config.rasi.bak"
  cp "$CONFIG_DIR/config.rasi" "$CONFIG_DIR/config.rasi.bak"
fi

info "Installing config.rasi → $CONFIG_DIR"
cp "$SRC_DIR/config.rasi" "$CONFIG_DIR/config.rasi"

info "Installing windows11-list-dark theme → $THEME_DIR"
cp "$SRC_DIR/windows11-list-dark.rasi" "$THEME_DIR/windows11-list-dark.rasi"

ok "Done. Test it with:  rofi -show drun"
