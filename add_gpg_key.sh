#!/bin/bash

if [ $# != 1 ]; then
  echo Expected one argument
  exit
fi

gpg --recv-keys $1

