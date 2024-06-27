#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle sound source
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎧

CURRENT_AUDIO_SOURCE=$(SwitchAudioSource -c)

if [ "$CURRENT_AUDIO_SOURCE" == "MacBook Pro Speakers" ]; then
  SwitchAudioSource -t output -s "USB Audio Device" & SwitchAudioSource -t system -s "USB Audio Device"
  CHANGED_AUDIO_SOURCE="USB Audio Device"
else
  SwitchAudioSource -t output -s "MacBook Pro Speakers" & SwitchAudioSource -t system -s "MacBook Pro Speakers"
  CHANGED_AUDIO_SOURCE="MacBook Pro Speakers"
fi

echo "Sound source changed to $CHANGED_AUDIO_SOURCE $ICON"
exit 0
