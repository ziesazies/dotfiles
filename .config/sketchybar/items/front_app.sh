#!/usr/bin/env sh

                                                                      \
 sketchybar --add       item         front_app left                    \
            --set       front_app    script="$PLUGIN_DIR/front_app.sh" \
                                    icon.drawing=off                  \
                                    background.padding_left=0         \
                                    background.padding_right=10       \
                                    label.color=$WHITE                \
                                    label.font="$FONT:Bold:14.0"     \
                                    associated_display=active         \
            --subscribe front_app    front_app_switched                \
                                                                      \
           --add       event        window_focus                      \
           --add       item         system.yabai left                 \
           --set       system.yabai script="$PLUGIN_DIR/yabai.sh"     \
                                    icon.font="$FONT:Bold:14.0"       \
                                    label.drawing=off                 \
                                    icon.width=30                     \
                                    icon=$YABAI_GRID                  \
                                    icon.color=$GREEN                 \
                                    updates=on                        \
                                    associated_display=active         \
           --subscribe system.yabai window_focus mouse.clicked        \

sketchybar   --add item       separator left                          \
             --set separator  icon=                                  \
                              icon.font="Liga SFMono Nerd Font:Regular:16.0" \
                              background.padding_left=10              \
                              background.padding_right=4            \
                              label.drawing=off                       \
                              associated_display=active               \
                              icon.color=$WHITE
