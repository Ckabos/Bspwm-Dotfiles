#/usr/bin/env bash

# Terminate already running bar instances
killall polybar -q

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar top's
polybar top -c /home/$USER/.config/polybar/config.ini &
polybar twotop -c /home/$USER/.config/polybar/config.ini & 
polybar threetop -c /home/$USER/.config/polybar/config.ini &

# Launch polybar bottom's
polybar bottom -c /home/$USER/.config/polybar/config.ini &
polybar twobottom -c /home/$USER/.config/polybar/config.ini &
polybar threebottom -c /home/$USER/.config/polybar/config.ini &

