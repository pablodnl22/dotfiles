#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$status" == "Charging" ]]; then
  icon=""
  color="#7dcfff"
elif [[ "$capacity" -le 20 ]]; then
  icon=""
  color="#f7768e"
elif [[ "$capacity" -le 40 ]]; then
  icon=""
  color="#ff9e64"
elif [[ "$capacity" -le 60 ]]; then
  icon=""
  color="#e0af68"
elif [[ "$capacity" -le 80 ]]; then
  icon=""
  color="#7aa2f7"
else
  icon=""
  color="#7dcfff"
fi

# Decide whether to show percentage
if [[ "$capacity" -le 30 ]]; then
  output="$icon $capacity%"
else
  output="$icon"
fi

# Print with color formatting
echo "%{F${color}}$output%{F-}"

