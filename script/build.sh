#!/bin/bash
#
# Build script for zythum
# Bundle and pack the mod
#

if [[ -e "./info.json" ]]; then
  # Generate assets first!
  echo "OK: Generating imports in data fixes"
  bash ./script/generate-imports.sh
  echo "OK: Generating README.md file"
  bash ./script/generate-readme.sh
  echo "OK: Generating MODNFO.md file"
  bash ./script/generate-modpage.sh

  FILTERCATS=18
  VERSIONSTR=$(cat info.json | grep \"version\")
  VERSION=$(echo $VERSIONSTR| cut -d'"' -f 4)
  DISTDIR="zythum_$VERSION"

  echo "OK: Building zythum version $VERSION"

  mkdir $DISTDIR
  mkdir $DISTDIR/mods

  cp -R ./assets ./$DISTDIR
  cp -R ./core ./$DISTDIR
  cp -R ./locale ./$DISTDIR
  cp -R ./prototypes ./$DISTDIR

  MODCATGS="x"
  CATCOUNT=0
  MODCOUNT=1
  MODTOTAL=$(ls mods | wc -l)
  echo "-- zythum compiled mod library" > ./$DISTDIR/mods/compiled.lua
  ls ./mods | sort -f | while read FILE; do
    if [[ "$FILE" =~ \.gitkeep || "$FILE" =~ \_template ]]; then
      continue
    fi

    echo "OK: Compiling mod $MODCOUNT/$MODTOTAL $FILE"
    while read LINE; do
      if [[ "$LINE" == *"'CATEGORY'"* ]];then
        echo "ER: Found unsorted item in mod $FILE"
        continue
      fi

      if [[ "$LINE" == "zythum_sort_mod"* ]]; then
        echo "$LINE" >> ./$DISTDIR/mods/compiled.lua
      else
        ITEM=$(echo $LINE | cut -d',' -f 4 | sed 's/)//g')
        SORT=$(echo $LINE | cut -d"'" -f 2)
        OLDS=$(cat ./$DISTDIR/mods/compiled.lua | grep "$ITEM")

        if [[ ! "$MODCATGS" =~ "-$SORT-" ]]; then
          MODCATGS="$MODCATGS-$SORT-"
          CATCOUNT=$(($CATCOUNT + 1))
          if [[ "$CATCOUNT" -gt "$FILTERCATS" ]]; then
            echo "ER: Found too many categories in $MODCATGS"
            rm -rf ./$DISTDIR
            exit 1 # only exits the subshell
          fi
        fi

        if [[ "$OLDS" == "" ]]; then
          echo $LINE >> ./$DISTDIR/mods/compiled.lua
        fi
      fi
    done < <(cat "./mods/$FILE" | grep zythum_sort)
    MODCOUNT=$(($MODCOUNT + 1))
  done

  if [[ ! -d $DISTDIR ]]; then
    exit 1
  fi

  cp info.json ./$DISTDIR/
  cp config.lua ./$DISTDIR/
  cp data-final-fixes.lua ./$DISTDIR/
  cp LICENSE.md ./$DISTDIR/LICENSE

  if [[ "$1" == "test" ]]; then
    cp control.lua ./$DISTDIR/
  fi

  CFG_PATH=$DISTDIR/config.lua
  CFG_LINE=0
  IFS=''
  while read LINE; do
    CFG_LINE=$(($CFG_LINE + 1))
    if [[ "$LINE" = "zythum_cfg_enabledebug = true"* ]]; then break; fi
  done < $CFG_PATH 
  #sed -i "${CFG_LINE}s/.*/zythum_cfg_enabledebug \= false/" $CFG_PATH
  sed -i '' "${CFG_LINE}s/.*/zythum_cfg_enabledebug \= false/" $CFG_PATH

  cd ./$DISTDIR
  if type ditto >/dev/null 2>&1; then
    ditto -ck --rsrc --sequesterRsrc --keepParent ./ "../zythum_$VERSION.zip"
  elif type 7z >/dev/null 2>&1; then
    7z a -tzip -mx=0 "../zythum_$VERSION.zip" ./*
  else
    zip -r "../zythum_$VERSION.zip" ./*
  fi
  cd ..

  rm -rf ./$DISTDIR
else
  echo "Not running from project root!"
fi