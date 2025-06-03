#!/bin/bash

# Kill any existing polybar instances
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

# Detect connected monitors
MONITORS=($(xrandr --query | grep " connected" | cut -d" " -f1))

# Path to polybar config
CONFIG=~/.config/polybar/config.ini

# Flags to check monitor availability
HDMI_MON=""
EDP_MON=""

# Identify monitor names
for MON in "${MONITORS[@]}"; do
  if [[ "$MON" == HDMI* ]]; then
    HDMI_MON="$MON"
  elif [[ "$MON" == eDP* ]]; then
    EDP_MON="$MON"
  fi
done

if [[ -n "$HDMI_MON" && -n "$EDP_MON" ]]; then
  echo "Launching polybar on dual monitors: $HDMI_MON (hdmi) and $EDP_MON (edp)"
  MONITOR=$HDMI_MON polybar hdmi --config="$CONFIG" &
  MONITOR=$EDP_MON polybar edp --config="$CONFIG" &
elif [[ -n "$HDMI_MON" || -n "$EDP_MON" ]]; then
  SINGLE_MON="${HDMI_MON:-$EDP_MON}"
  echo "Launching polybar on single monitor: $SINGLE_MON (main)"
  MONITOR=$SINGLE_MON polybar main --config="$CONFIG" &
else
  echo "No HDMI or eDP monitors detected. Polybar not launched."
fi

