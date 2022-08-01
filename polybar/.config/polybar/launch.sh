#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example 2>&1 | tee -a /tmp/polybar1.log & disown
EXTERNAL_MONITOR_NAME="HDMI-A-0"
STATUS_EXTERNAL_MONITOR=$(xrandr --query | grep $EXTERNAL_MONITOR_NAME)
if [[ ! $STATUS_EXTERNAL_MONITOR == *disconnected* ]]; then
    polybar right 2>&1 | tee -a /tmp/polybar1.log & disown
fi
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."

