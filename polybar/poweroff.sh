#!/bin/bash

ICON_FILE="/tmp/polybar_powermenu_icon"
NORMAL="%{F#7aa2f7}%{F-}"
ACTIVE="%{F#ff5555}%{F-}"

# No args? Just print the current icon
if [[ "$1" != "click" ]]; then
  if [[ -f "$ICON_FILE" ]]; then
    cat "$ICON_FILE"
  else
    echo "$NORMAL"
  fi
  exit
fi

# On click? Switch to red and launch the menu
echo "$ACTIVE" > "$ICON_FILE"
~/.config/rofi/powermenu/type-6/powermenu.sh
echo "$NORMAL" > "$ICON_FILE"

