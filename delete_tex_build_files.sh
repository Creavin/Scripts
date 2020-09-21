#!/bin/bash
## This script delete tex build files: .log, .aux, .gz
## -p is the flag for deleting pdf in addition to the other build files

delete_file () {
  echo "Deleting $1"
  rm -f "$1"
}

for file in *; do
  case $file in
    *.pdf)
      if [ "$1" == "-p" ]
      then
        delete_file "$file"
      fi
      ;;

    *.log | *.aux | *.gz)
        delete_file "$file"
      ;;

    *)
      ;;
  esac
done

