#!/bin/bash
#
# Import script for zythum
# Load the packed mod into the factorio mods dir in order to test it
#

FACTORIO_PATH=/Applications/factorio.app/Contents/MacOS/factorio
FACTMODS_PATH=~/Library/Application\ Support/factorio/mods
MODPACKS_PATH=""

bash ./script/build.sh

while read FILE; do
  MODPACKS_PATH="$FILE"
  break
done < <(find . -name "*.zip" )

mv "$MODPACKS_PATH" "$FACTMODS_PATH"
$FACTORIO_PATH
