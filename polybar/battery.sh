#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT1/capacity)
status=$(cat /sys/class/power_supply/BAT1/status)

if [[ "$status" == "Charging" ]]; then
  icon="🔋"
elif [[ "$capacity" -le 20 ]]; then
  icon="🔋"
elif [[ "$capacity" -le 40 ]]; then
  icon="🔋"
elif [[ "$capacity" -le 60 ]]; then
  icon="🔋"
elif [[ "$capacity" -le 80 ]]; then
  icon="🔋"
else
  icon="🔋"
fi

echo "$icon $capacity%"

