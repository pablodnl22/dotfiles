#!/bin/bash

# Check if HDMI-1 is connected
if xrandr | grep "HDMI-1 connected"; then
    ~/.screenlayout/hdmi-work-layout.sh
fi

