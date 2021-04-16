#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar -q

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main -c /home/$USER/.config/polybar/config.ini &
polybar twomain -c /home/$USER/.config/polybar/config.ini & 
polybar threemain -c /home/$USER/.config/polybar/config &
