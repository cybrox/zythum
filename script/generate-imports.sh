#!/bin/bash
#
# Generator script for zythum
# Generate the imports for the mod
#

MOD_DIR=./mods
MOD_FIXES=./data-final-fixes.lua
TEMP_FILE=./temp.lua

if [[ ! -d "$MOD_DIR" ]]; then
  echo "ER: Not running from project root"
else
  mv "$MOD_FIXES" "$TEMP_FILE"
  touch "$MOD_FIXES"
  cat "$TEMP_FILE" | while read LINE; do
    if [[ "$LINE" =~ "compiled" ]]; then
      LINE="  $LINE"
    fi

    echo "$LINE" >> $MOD_FIXES

    if [[ "$LINE" =~ "else" ]]; then
      break
    fi
  done

  rm "$TEMP_FILE"

  ls "$MOD_DIR" | while read FILE; do
    NFIL=$(echo $FILE | sed 's/.lua//g')

    if [[ "$NFIL" != "_template" ]]; then
      echo "  require('mods.$NFIL')" >> $MOD_FIXES
    fi
  done

  echo "end" >> $MOD_FIXES
fi
