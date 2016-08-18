#!/bin/bash
#
# Generator script for zythum
# Generate the mods.factorio readme for the mod
#

CHANGE_MD=./CHANGELOG.md
README_MD=./README.md
MODNFO_MD=./MODNFO.md

if [[ ! -e "$README_MD" ]]; then
  echo "ER: Not running from project root"
else
  rm -f $MODNFO_MD
  touch $MODNFO_MD

  cat "$README_MD" | while read LINE; do
    if [[ "$LINE" = "## Item groups"* ]]; then
      break
    fi

    if [[ "$LINE" = "## Fully supported"* ]]; then
      echo "## Changelog" >> $MODNFO_MD
      cat $CHANGE_MD >> $MODNFO_MD
      echo " " >> $MODNFO_MD
      echo " " >> $MODNFO_MD
    fi

    if [[ "$LINE" = "- [ "* ]]; then
      NAME=$(echo $LINE | cut -d'[' -f 2 | cut -d']' -f 1)
      VERS=$(echo $LINE | cut -d'`' -f 2)
      LINE="- $NAME \`$VERS\`"
    fi

    echo "$LINE" >> $MODNFO_MD
  done
fi
