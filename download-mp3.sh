#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Download mp3
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🔈
# @raycast.argument1 { "type": "text", "placeholder": "Url" }

yt-dlp -f 'ba' --extract-audio --audio-format mp3 -o "/Users/$USER/Downloads/%(title)s.%(ext)s" "$1"

if [ $? -eq 0 ]; then
  echo "Download completed successfully"
else
  echo "An error occurred during the download process"
fi
