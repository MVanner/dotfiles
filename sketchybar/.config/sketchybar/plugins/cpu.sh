#!/bin/bash

source "$CONFIG_DIR/colors.sh"

CORES="$(sysctl -n hw.ncpu)"
LOAD="$(ps -A -o %cpu= | awk -v c="$CORES" '{s+=$1} END {printf "%d", s/c}')"

if   [ "$LOAD" -ge 80 ]; then COLOR="$RED"
elif [ "$LOAD" -ge 50 ]; then COLOR="$YELLOW"
else                          COLOR="$TEXT"
fi

sketchybar --set "$NAME" label="${LOAD}%" label.color="$COLOR"
