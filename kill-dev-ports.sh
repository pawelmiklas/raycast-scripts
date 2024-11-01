#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Kill dev ports
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🔴
# @raycast.packageName Kill dev ports

ports=$(lsof -ti:1111,3000-3010,5173-5200)
if [ -n "$ports" ]; then
    kill -9 $ports
    echo "Successfully killed processes"
else
    echo "No active processes found on ports"
fi
