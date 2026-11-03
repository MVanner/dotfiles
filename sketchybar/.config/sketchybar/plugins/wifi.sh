#!/bin/bash
# Icon-only: connected vs. not. (SSID is redacted on recent macOS without location access.)

source "$CONFIG_DIR/colors.sh"
source "$CONFIG_DIR/icons.sh"

if [ -n "$(ipconfig getifaddr en0 2>/dev/null)" ]; then
  sketchybar --set "$NAME" icon="$ICON_WIFI" icon.color="$TEAL"
else
  sketchybar --set "$NAME" icon="$ICON_WIFI_OFF" icon.color="$RED"
fi
