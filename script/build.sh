#!/bin/bash
#
# Build script for zythum
# Bundle and pack the mod
#

if [[ -e "./info.json" ]]; then
  VERSIONSTR=$(cat info.json | grep \"version\")
  VERSION=$(echo $VERSIONSTR| cut -d'"' -f 4)
  echo "$VERSION"

  mkdir dist
  mkdir dist/mods

  cp -R ./assets ./dist
  cp -R ./core ./dist
  cp -R ./locale ./dist
  cp -R ./prototypes ./dist

  echo "-- zythum compiled mod library" > ./dist/mods/compiled.lua
  ls ./mods | while read FILE; do
    if [[ "$FILE" =~ \.gitkeep || "$FILE" =~ \_template ]]; then
      continue
    fi

    cat "./mods/$FILE" | grep zythum_sort >> ./dist/mods/compiled.lua
  done

  cp info.json ./dist/
  cp config.lua ./dist/
  cp data-final-fixes.lua ./dist/
  cp LICENSE.md ./dist/LICENSE

  cd ./dist
  zip -r "../zythum_$VERSION.zip" ./*
  cd ..

  rm -rf ./dist
else
  echo "Not running from project root!"
fi