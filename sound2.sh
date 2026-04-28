#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Audio Source Headphones
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎧

SwitchAudioSource -t output -s "USB Audio Device" & SwitchAudioSource -t system -s "USB Audio Device"

echo "Audio Source Headphones"
