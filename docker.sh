#!/bin/bash
MAP_PATH="./data/world/"
MAP_FILE="realmap.otbm"
# check if the map does not exists
if [ ! -f "$MAP_PATH$MAP_FILE" ]; then
  unzip "$MAP_PATH$MAP_FILE.zip" -d $MAP_PATH
fi
# docker-compose -p otxserver -f docker-compose.yaml up -d