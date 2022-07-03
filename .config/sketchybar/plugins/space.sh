#!/usr/bin/env bash

update() {
if [ "$SELECTED" = "true" ]; then
  sketchybar -m --set $NAME label.highlight=on icon.highlight=on background.drawing=on background.color=0xfff38ba8
else
  sketchybar -m --set $NAME label.highlight=off icon.highlight=off background.drawing=off background.color=0xff3c3e4f
fi
}

mouse_entered() {
  sketchybar -m --set $NAME icon.highlight=on \
                            label.highlight=on
}

mouse_exited() {
  sketchybar -m --set $NAME icon.highlight=off \
                            label.highlight=off
}

case "$SENDER" in
  "mouse.entered") mouse_entered
  ;;
  "mouse.exited") mouse_exited
  ;;
  *) update 
  ;;
esac
