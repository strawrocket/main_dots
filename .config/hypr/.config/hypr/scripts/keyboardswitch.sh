#!/bin/bash

# Get the directory of the current script
scrDir=$(dirname "$(realpath "$0")")

# Source the globalcontrol.sh script if needed
# To incorporate its functionality directly, ensure its content is included here or assume it's not needed

# Execute hyprctl to switch keyboard layout
hyprctl switchxkblayout all next

# Retrieve the main keyboard layout using hyprctl and process with jq and awk
layMain=$(hyprctl -j devices | jq '.keyboards' | jq '.[] | select (.main == true)' | awk -F '"' '{if ($2=="active_keymap") print $4}')

# Send a notification with the current layout
notify-send -a "t1" -r 91190 -t 800 -i "$scrDir/keyboard.svg" "${layMain}"
