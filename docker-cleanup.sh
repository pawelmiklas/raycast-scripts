#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Docker cleanup
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🐳

echo "Starting Docker cleanup..."

echo "Running docker system prune -a..."
docker system prune -a -f

echo "Running docker volume prune..."
docker volume prune -f

echo "Docker cleanup completed"
