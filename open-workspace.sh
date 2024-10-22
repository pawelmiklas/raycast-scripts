#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open workspace
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 👨‍💻

# Reopen stando to reset timer
pkill Stando
open -a Stando

open -a Slack
open -a 'firefox developer edition'
open -a 'Cursor'
open -a 'Microsoft Teams'
echo 'Workspace opened successfully!'
exit 0
