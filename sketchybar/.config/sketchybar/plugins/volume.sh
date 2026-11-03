#!/bin/bash
# volume_change passes the volume percentage in $INFO.

source "$CONFIG_DIR/icons.sh"

VOLUME="${INFO:-$(osascript -e 'output volume of (get volume settings)')}"
MUTED="$(osascript -e 'output muted of (get volume settings)' 2>/dev/null)"

if [ "$MUTED" = "true" ] || [ "$VOLUME" = "0" ]; then
  ICON="$ICON_VOLUME_MUTE"
elif [ "$VOLUME" -ge 60 ]; then
  ICON="$ICON_VOLUME_HIGH"
elif [ "$VOLUME" -ge 30 ]; then
  ICON="$ICON_VOLUME_MED"
else
  ICON="$ICON_VOLUME_LOW"
fi

sketchybar --set "$NAME" icon="$ICON" label="${VOLUME}%"
