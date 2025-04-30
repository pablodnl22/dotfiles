#!/bin/bash
if ps aux | grep "kitty" | grep -v "grep" > /dev/null
 then xdotool windowactivate $(xdotool search --onlyvisible --class kitty)
 else kitty&
fi
