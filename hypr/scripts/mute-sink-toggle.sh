#!/bin/bash

wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

STATUS=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

if [[ "$STATUS" == *"[MUTED]"* ]]; then
    notify-send "Audio Sink Muted"
else
    notify-send "Audio Sink UnMuted"
fi
