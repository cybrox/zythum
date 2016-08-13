#!/bin/bash
#
# Import script for zythum
# Load the packed mod into the factorio mods dir in order to test it
#

source ./script/_config.sh

MODPACKS_PATH=""
FACTMODS_GRAB=./script/grabber

# Allow us to do everything at once
if [[ "$1" == "all" ]]; then
  bash ./script/generate-imports.sh
  bash ./script/generate-readme.sh
fi

# Delete all old mods from the game dir
if [[ "$1" != "keep" ]]; then
  ls "$FACTMODS_PATH" | while read FILE; do
    rm -rf "$FACTMODS_PATH/$FILE"
  done
fi

bash ./script/build.sh

while read FILE; do
  MODPACKS_PATH="$FILE"
  break
done < <(find . -name "*.zip" )

if [[ "$MODPACKS_PATH" == "" ]]; then
  echo "ER: Build failed, no output package found"
  exit 1
fi

cp ./mods/base.lua "$FACTMODS_GRAB/baseset.lua"
cp ./config.lua "$FACTMODS_GRAB/config.lua"
cp -r "$FACTMODS_GRAB" "$FACTMODS_PATH"
mv "$FACTMODS_PATH/grabber" "$FACTMODS_PATH/zythumgrabber_1.0.0"
rm "$FACTMODS_GRAB/baseset.lua"
rm "$FACTMODS_GRAB/config.lua"
mv "$MODPACKS_PATH" "$FACTMODS_PATH"

$FACTORIO_PATH
