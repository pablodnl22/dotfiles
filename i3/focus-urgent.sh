#!/usr/bin/env bash
# Jump to windows that request attention via the X11 urgency hint.
# Chrome (and some other apps) set urgency instead of sending a proper
# _NET_ACTIVE_WINDOW activation request, so focus_on_window_activation
# never kicks in — this listener covers that case.

# Single instance guard: exec_always re-runs this on every i3 reload.
exec 200>"${XDG_RUNTIME_DIR:-/tmp}/i3-focus-urgent.lock"
flock -n 200 || exit 0

i3-msg -t subscribe -m '["window"]' |
  jq --unbuffered -r 'select(.change == "urgent" and .container.urgent) | .container.id' |
  while read -r con_id; do
    i3-msg "[con_id=$con_id] focus" >/dev/null
  done
