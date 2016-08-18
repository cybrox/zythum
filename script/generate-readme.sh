#!/bin/bash
#
# Generator script for zythum
# Generate the readme for the mod
#

MOD_DIR=./mods
README_MD=./README.md
TEMP_FILE=./temp.md
IS_STATIC=false

if [[ ! -d "$MOD_DIR" ]]; then
  echo "ER: Not running from project root"
else
  COUNT_MODS=$(ls mods | wc -l)
  COUNT_BLACK=$(($(wc -l < script/blacklist.json) - 5))
  COUNT_TOTAL=$(($COUNT_MODS + $COUNT_BLACK))

  mv "$README_MD" "$TEMP_FILE"
  touch "$README_MD"
  cat "$TEMP_FILE" | while read LINE; do
    echo "$LINE" >> $README_MD

    if [[ "$LINE" = "- **base**"* ]]; then
      IS_STATIC=false
      break
    fi
  done

  ls "$MOD_DIR" | sort -f | while read FILE; do
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
    if [[ "$LINE" = "## Semi-Supp"* ]]; then
      echo "" >> $README_MD
      IS_STATIC=true
    fi

    if [[ $IS_STATIC == true ]]; then
      echo $LINE >> $README_MD
    fi
  done < $TEMP_FILE

  README_PATH=README.md
  README_LINE=0
  IFS=''
  while read LINE; do
    README_LINE=$(($README_LINE + 1))
    if [[ "$LINE" = *" Supported mods"* ]]; then break; fi
  done < $README_PATH 
  sed -i '' "${README_LINE}s/.*/## Supported mods ($COUNT_TOTAL)/" $README_PATH

  rm "$TEMP_FILE"
fi
