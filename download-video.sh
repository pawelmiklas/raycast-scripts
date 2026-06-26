#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Download video
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🎬
# @raycast.argument1 { "type": "text", "placeholder": "Paste URL" }

yt-dlp -S 'res:1080' --embed-thumbnail --embed-subs --embed-metadata --embed-chapters --merge-output-format mp4 --cookies-from-browser brave -o "/Users/$USER/Downloads/%(title)s.%(ext)s" "$1"

if [ $? -eq 0 ]; then
  echo "✅ Download complete"
  open ~/Downloads
else
  echo "❌ Download failed"
fi
