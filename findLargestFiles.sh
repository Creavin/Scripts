#!/bin/bash 

### Bash script which recursively lists the largest files in 
### the current directory for the purpose of finding large files to 
### delete. 

### Optionally takes one argument which determines how many files are
### to be listed

if [ $# == 1 ]; then #if number of files is specified
  sudo du -a ./ | sort -n -r | head -n $1
  exit
else
  sudo du -a ./ | sort -n -r | head -n 20
fi
