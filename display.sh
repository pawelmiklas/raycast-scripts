#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title toggle display on/off
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🔌

INPUT_NAME=$(displaybuddy get "DELL U3425WE" --json | jq -r '.inputSource.name')

if [[ "$INPUT_NAME" == "DisplayPort 2" ]] || [[ -z "$INPUT_NAME" ]] || [[ "$INPUT_NAME" == "null" ]]; then
  displaybuddy set "DELL U3425WE" --input hdmi1
  echo "Display turned off"
else
  displaybuddy set "DELL U3425WE" --input displayport2
  echo "Display turned on"
fi

