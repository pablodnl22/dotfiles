#!/bin/bash

# Kill any existing polybar instances
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar using the local config file
# Launch bars on specific monitors
MONITOR=HDMI-1 polybar hdmi --config=~/.config/polybar/config.ini &
MONITOR=eDP-1 polybar edp --config=~/.config/polybar/config.ini &
