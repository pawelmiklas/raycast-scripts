#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Kill dev ports
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Kill dev ports

kill -9 $(lsof -ti:5173,5174,5175,5176,5177,5178,5179,5180,5181,5182,5183,5184,5185,5186,5187,5188,5189,5190,5191,5192,5193,5194,5195,5196,5197,5198,5199,5200)

