#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Download audio
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🎧
# @raycast.argument1 { "type": "text", "placeholder": "Paste URL" }

yt-dlp -f 'ba' --extract-audio --audio-format mp3 --audio-quality 0 --embed-thumbnail --embed-metadata --cookies-from-browser brave -o "/Users/$USER/Downloads/%(title)s.%(ext)s" "$1"

if [ $? -eq 0 ]; then
  echo "✅ Download complete"
  open ~/Downloads
else
  echo "❌ Download failed"
fi
