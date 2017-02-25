#!/bin/bash

DOTFILES=$HOME/dotfiles/shell

for file in `find $DOTFILES`
do
#  echo $file
  if [ -f $file ]; then
  source $file
  fi
done

