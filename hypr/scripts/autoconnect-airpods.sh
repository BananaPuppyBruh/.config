#!/bin/bash

# Replace this with your AirPods' MAC address
AIRPODS_MAC="14:14:7D:A8:1D:80"

# Wait for Bluetooth to initialize
sleep 2

# Run bluetoothctl commands in a single interactive session
timeout 5s bluetoothctl <<EOF
power on
trust $AIRPODS_MAC
connect $AIRPODS_MAC
EOF
