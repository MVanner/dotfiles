#!/bin/bash
# Highlight focused AeroSpace workspace; dim empty ones.
# $1 = workspace id. FOCUSED_WORKSPACE comes from aerospace_workspace_change trigger.

source "$CONFIG_DIR/colors.sh"

SID="$1"
FOCUSED="${FOCUSED_WORKSPACE:-$(aerospace list-workspaces --focused 2>/dev/null)}"

if [ "$SID" = "$FOCUSED" ]; then
  sketchybar --set "$NAME" background.drawing=on icon.color="$CRUST"
  exit 0
fi

if [ -n "$(aerospace list-windows --workspace "$SID" 2>/dev/null)" ]; then
  COLOR="$TEXT"
else
  COLOR="$OVERLAY0"
fi

sketchybar --set "$NAME" background.drawing=off icon.color="$COLOR"
