#!/bin/bash

# Start gnome-keyring-daemon with necessary components
eval '$(/usr/bin/gnome-keyring-daemon --start --components=secrets)'

# Export environment variables so apps can talk to the keyring
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID
