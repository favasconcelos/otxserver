#!/bin/bash

if ! [ -x "$(command -v unzip)" ]; then
  echo 'Error: unzip is not installed.' >&2
  exit 1
fi

# Config
MAP_PATH="./data/world/"
MAP_FILE="realmap.otbm"
# check if the map does not exists and unzip it
if [ ! -f "$MAP_PATH$MAP_FILE" ]; then
  unzip "$MAP_PATH$MAP_FILE.zip" -d $MAP_PATH
fi
docker-compose -p otxserver -f docker-compose.yaml up -d