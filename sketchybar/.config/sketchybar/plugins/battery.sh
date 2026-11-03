#!/bin/bash

source "$CONFIG_DIR/colors.sh"
source "$CONFIG_DIR/icons.sh"

BATT="$(pmset -g batt)"
PERCENTAGE="$(echo "$BATT" | grep -Eo '[0-9]+%' | head -1 | cut -d% -f1)"

# Desktop Mac: no battery
if [ -z "$PERCENTAGE" ]; then
  sketchybar --set "$NAME" drawing=off
  exit 0
fi

if   [ "$PERCENTAGE" -ge 90 ]; then ICON="$ICON_BATTERY_100"; COLOR="$GREEN"
elif [ "$PERCENTAGE" -ge 60 ]; then ICON="$ICON_BATTERY_75";  COLOR="$GREEN"
elif [ "$PERCENTAGE" -ge 30 ]; then ICON="$ICON_BATTERY_50";  COLOR="$YELLOW"
elif [ "$PERCENTAGE" -ge 15 ]; then ICON="$ICON_BATTERY_25";  COLOR="$PEACH"
else                                ICON="$ICON_BATTERY_0";   COLOR="$RED"
fi

if echo "$BATT" | grep -q 'AC Power'; then
  ICON="$ICON_CHARGING"
  COLOR="$GREEN"
fi

sketchybar --set "$NAME" drawing=on icon="$ICON" icon.color="$COLOR" label="${PERCENTAGE}%"
