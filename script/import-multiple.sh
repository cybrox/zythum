#!/bin/bash
#
# Import script for zythum
# Load unpack and sort mods from import dir
#

IMPORT_DIR=$1
SINGLE_PATH=./script/import-single.sh

if [[ ! -e "$SINGLE_PATH" ]]; then
  echo "ER: Not running from project root"
  exit 1
fi

if [[ -d "$IMPORT_DIR" ]]; then
  TOTAL_FILES=$(ls -l "$IMPORT_DIR" | grep -v ^l | wc -l)
  TOTAL_FILES=$(($TOTAL_FILES - 1))
  CURRN_FILES=0

  ls "$IMPORT_DIR" | while read FILE; do
    echo "OK: Analyzing mod file $CURRN_FILES/$TOTAL_FILES"
    bash $SINGLE_PATH "$IMPORT_DIR/$FILE" import $2

    CURRN_FILES=$(($CURRN_FILES + 1))
  done
else
  echo "ER: Invalid import directory"
fi
