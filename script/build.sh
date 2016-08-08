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

  cp -R ./assets ./dist
  cp -R ./core ./dist
  cp -R ./locale ./dist
  cp -R ./mods ./dist
  cp -R ./prototypes ./dist

  cp info.json ./dist/
  cp config.lua ./dist/
  cp data-final-fixes.lua ./dist/
  cp LICENSE.md ./dist/LICENSE

  rm ./dist/mods/_template.lua

  cd ./dist
  zip -r "../zythum_$VERSION.zip" ./*
  cd ..

  rm -rf ./dist
else
  echo "Not running from project root!"
fi