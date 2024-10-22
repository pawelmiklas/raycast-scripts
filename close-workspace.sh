#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Close workspace
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🏖️

pkill Slack
pkill TablePlus
pkill Insomnium
pkill Docker
kill -9 $(pgrep firefox)
kill -9 $(pgrep Electron)
kill -9 $(pgrep Cursor)
pkill -f 'Microsoft Teams'
echo 'Workspace closed successfully!'
exit 0
