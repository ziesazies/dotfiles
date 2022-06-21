#!/usr/bin/env bash

QUERY="$(yabai -m query --spaces)"
YABAI_SPACES=( $(echo "$QUERY" | jq -r '.[].index') )
VISIBLE=( "0" $(echo "$QUERY" | jq -r '.[].visible') )
DISPLAY=( "0" $(echo "$QUERY" | jq -r '.[].display') )

args=()
for i in {1..10}; do
    if [[ "${YABAI_SPACES[*]}" =~ "$i" ]]; then
      args+=(--set space.$i drawing=on \
                            icon.highlight=${VISIBLE[$i]} \
                            associated_display=${DISPLAY[$i]})
    else
      args+=(--set space.$i drawing=off)
    fi
done

sketchybar -m "${args[@]}" 
