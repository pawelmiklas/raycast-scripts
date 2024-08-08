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
kill -9 $(pgrep firefox)
kill -9 $(pgrep Electron)
pkill -f 'Microsoft Teams'
echo 'Workspace closed successfully!'
exit 0
