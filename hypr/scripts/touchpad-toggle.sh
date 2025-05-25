#!/bin/bash
#~/.config/waybar/toggle-laptop-keyboard.sh &

CACHE_FILE="./touchpad_toggle_cache"

if [ -f "$CACHE_FILE" ] ;then
    rm "$CACHE_FILE"
    sh -c "hyprctl keyword 'device[msft0002:00-04f3:31ad-touchpad]:enabled' 1"
    notify-send "touchpad enabled"
else
    touch "$CACHE_FILE"
    sh -c "hyprctl keyword 'device[msft0002:00-04f3:31ad-touchpad]:enabled' 0"
    notify-send "touchpad disabled"
fi
