#!/usr/bin/env sh

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")

for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space      space.$sid left                            \
             --set space.$sid associated_space=$sid                      \
                              icon=${SPACE_ICONS[i]}                     \
                              icon.padding_left=22                        \
                              icon.padding_right=22                       \
                              icon.color=$GREY \
                              icon.highlight_color=$WHITE          \
                              background.padding_left=-8                  \
                              background.padding_right=-8                \
                              background.height=24                       \
                              background.corner_radius=5                 \
                              background.color=0xff808080               \
                              background.drawing=off                     \
                              label.drawing=off                          \
                              # script="$PLUGIN_DIR/space.sh"              \
                              click_script="yabai -m space --focus $sid" \
                              icon.font="$FONT:Light:15.0"
done

sketchybar   --add item       separator left                          \
             --set separator  icon=                                  \
                              icon.font="Liga SFMono Nerd Font:Regular:16.0" \
                              background.padding_left=10              \
                              background.padding_right=15             \
                              label.drawing=off                       \
                              associated_display=active               \
                              icon.color=$WHITE
