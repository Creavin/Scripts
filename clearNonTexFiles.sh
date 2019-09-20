#!/bin/bash

files=( * )
for file in ${files[@]}; do
  currentFileExtension="${file##*.}"
  if [[ $currentFileExtension != "tex" && $currentFileExtension != "pdf" ]]; then
    rm -f $file
  fi
done

