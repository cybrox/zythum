#!/bin/bash
#
# Build script for zythum
# Bundle and pack the mod
#

if [[ -e "./info.json" ]]; then
  VERSIONSTR=$(cat info.json | grep \"version\")
  VERSION=$(echo $VERSIONSTR| cut -d'"' -f 4)
  echo "OK: Building zythum version $VERSION"

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

  CFG_PATH=dist/config.lua
  CFG_LINE=0
  IFS=''
  while read LINE; do
    CFG_LINE=$(($CFG_LINE + 1))
    if [[ "$LINE" = "zythum_cfg_enabledebug = true"* ]]; then break; fi
  done < $CFG_PATH 
  sed -i "${CFG_LINE}s/.*/zythum_cfg_enabledebug \= false/" $CFG_PATH
  #sed -i '' "${CFG_LINE}s/.*/zythum_cfg_enabledebug \= false/" $CFG_PATH

  cd ./dist
  if type ditto >/dev/null 2>&1; then
    ditto -ck --rsrc --sequesterRsrc --keepParent ./ "../zythum_$VERSION.zip"
  elif type 7z >/dev/null 2>&1; then
    7z a -tzip -mx=0 "../zythum_$VERSION.zip" ./*
  else
    zip -r "../zythum_$VERSION.zip" ./*
  fi
  cd ..

  rm -rf ./dist
else
  echo "Not running from project root!"
fi