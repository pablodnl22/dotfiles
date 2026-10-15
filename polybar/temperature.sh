#!/usr/bin/env bash

# Locate the CPU package sensor by name instead of relying on a thermal-zone
# number, which can change across kernel updates or hardware configurations.
for zone in /sys/class/thermal/thermal_zone*; do
  [[ -r "$zone/type" && -r "$zone/temp" ]] || continue
  [[ "$(<"$zone/type")" == "x86_pkg_temp" ]] || continue

  temperature=$(<"$zone/temp")
  printf '%d°C %%{F#7aa2f7}%%{F-}\n' "$((temperature / 1000))"
  exit 0
done

printf -- '--°C %%{F#565f89}%%{F-}\n'
