#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Close workspace
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
pkill Slack
killall 'Google Chrome'
kill -9 $(pgrep Electron)
pkill 'Microsoft Teams'
exit 0
