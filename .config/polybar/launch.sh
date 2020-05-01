#!/bin/sh

POLYBAR_DIR=$XDG_CONFIG_HOME/polybar

# Terminate running bar instances
killall -q polybar

# Wait until the processes shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
for m in $(polybar -m | cut -d: -f1); do
	MONITOR=$m polybar -c $POLYBAR_DIR/config top    & \
	MONITOR=$m polybar -c $POLYBAR_DIR/config bottom & \
done
