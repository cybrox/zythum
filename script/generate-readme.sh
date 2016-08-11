#!/bin/bash
#
# Generator script for zythum
# Generate the imports for the mod
#

MOD_DIR=./mods
README_MD=./README.md
TEMP_FILE=./temp.md
IS_STATIC=false

if [[ ! -d "$MOD_DIR" ]]; then
  echo "ER: Not running from project root"
else
  mv "$README_MD" "$TEMP_FILE"
  touch "$README_MD"
  cat "$TEMP_FILE" | while read LINE; do
    echo "$LINE" >> $README_MD

    if [[ "$LINE" = "- **base**"* ]]; then
      IS_STATIC=false
      break
    fi
  done

  ls "$MOD_DIR" | while read FILE; do
    FIND_NAME=$(cat "$MOD_DIR/$FILE" | grep name:)
    FIND_LINK=$(cat "$MOD_DIR/$FILE" | grep link:)
    FIND_VERS=$(cat "$MOD_DIR/$FILE" | grep refver:)

    NFIL=$(echo $FILE | sed 's/.lua//g')
    NAME=$(echo $FIND_NAME| cut -d':' -f 2)
    LINK=$(echo $FIND_LINK| cut -d' ' -f 3)
    VERS=$(echo $FIND_VERS| cut -d' ' -f 3)

    if [[ "$NFIL" != "_template" && "$NFIL" != "base" ]]; then
      echo "- [$NAME]($LINK) \`>= $VERS\`" >> $README_MD
    fi
  done

  IFS=''
  while read LINE; do
    if [[ "$LINE" = "## Planned"* ]]; then
      echo "" >> $README_MD
      IS_STATIC=true
    fi

    if [[ $IS_STATIC == true ]]; then
      echo $LINE >> $README_MD
    fi
  done < $TEMP_FILE
  echo "" >> $README_MD

  rm "$TEMP_FILE"
fi
