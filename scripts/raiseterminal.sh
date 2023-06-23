#!/bin/bash
if ps aux | grep "xfce4-terminal" | grep -v "grep" > /dev/null
 then xdotool windowactivate $(xdotool search --onlyvisible --class xfce4-terminal)
 else xfce4-terminal&
fi
