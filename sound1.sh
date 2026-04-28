#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Audio Source MacBook Pro Speakers
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 💻

SwitchAudioSource -t output -s "MacBook Pro Speakers" & SwitchAudioSource -t system -s "MacBook Pro Speakers"

echo "Audio Source MacBook Pro Speakers"
