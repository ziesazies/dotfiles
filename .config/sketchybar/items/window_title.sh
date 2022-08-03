#!/usr/bin/env sh

# sketchybar --add item space_separator left                            \
  # --set space_separator icon=$CHEVRON_RIGHT \
sketchybar --add item window_title left                               \
--set window_title    script="$PLUGIN_DIR/window_title.sh" \
icon.drawing=off                     \
label.font="$FONT:Bold:14.0"         \
--subscribe window_title front_app_switched \
          --add item space_separator left                            \
          --set space_separator icon=$CHEVRON_RIGHT \
                icon.padding_left=8 \

