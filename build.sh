#!/bin/sh
# Builds void_dragon-V1.0.jar from the src folder
cd "$(dirname "$0")/src" && rm -f ../void_dragon-V1.0.jar && zip -q -r -X ../void_dragon-V1.0.jar . && echo "Built void_dragon-V1.0.jar"
