#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle sound source
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎧

CURRENT_AUDIO_SOURCE=$(SwitchAudioSource -c)

if [ "$CURRENT_AUDIO_SOURCE" == "MacBook Pro Speakers" ]; then
  SwitchAudioSource -i 95
else
  SwitchAudioSource -i 79
fi

echo "Sound source toggled"
exit 0
