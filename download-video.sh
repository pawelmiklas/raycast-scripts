#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Download video
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎬
# @raycast.argument1 { "type": "text", "placeholder": "url" }

yt-dlp -S 'res:1080' --embed-thumbnail --embed-subs --embed-metadata --merge-output-format mp4 -o "/Users/$USER/Downloads/%(title)s.%(ext)s" $1

if [ $? -eq 0 ]; then
  echo "Download completed successfully"
else
  echo "An error occurred during the download process"
fi
