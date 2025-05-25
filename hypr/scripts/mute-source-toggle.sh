#!/bin/bash

wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle;

STATUS=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@)

if [[ "$STATUS" == *"[MUTED]"* ]]; then
    notify-send "Audio Source Muted"
else
    notify-send "Audio Source UnMuted"
fi
