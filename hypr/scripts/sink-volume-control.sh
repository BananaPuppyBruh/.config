#!/bin/bash

# echo ${1}

# wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

# STATUS=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | cut -d " " -f 2,3)
VOLUME_MAJOR=$(echo ${VOLUME} | cut -d "." -f 1,3)
VOLUME_MINOR=$(echo ${VOLUME} | cut -d "." -f 2,3)

if [[ "${1}" == *"i"* ]]; then
    if [[ ${VOLUME_MAJOR} == "0" ]]; then
        wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ ${2}%+
        notify-send "Audio Sink V+${2}" --expire-time=1000
    fi
elif [[ "${1}" == *"d"* ]]; then
    if [[ ${VOLUME_MINOR} != "00" || ${VOLUME_MAJOR} == "1" ]]; then
        wpctl set-volume @DEFAULT_AUDIO_SINK@ ${2}%-
        notify-send "Audio Sink V-${2}" --expire-time=1000
    fi
fi
