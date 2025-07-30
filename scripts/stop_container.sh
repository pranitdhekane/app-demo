#!/bin/bash
set -e

echo "Looking for running containers exposing port 5000..."

# Get the container ID(s) running on port 5000 (matches your app)
CONTAINERS=$(docker ps -q --filter "publish=5000")

if [ -n "$CONTAINERS" ]; then
  echo "Stopping container(s): $CONTAINERS"
  docker stop $CONTAINERS
  docker rm $CONTAINERS
  echo "Containers stopped and removed."
else
  echo "No running containers found on port 5000."
fi
