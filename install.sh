#!/bin/bash

# more of a 'move and change name', but that's too long of a method name
backup() {
  TS=$(date +%Y_%m_%d)
  mv $1 $1_$TS
}

# backup existing file before creating symlink:
link() {
  local file=$(basename $1)
    if [ -f $2/$file ] && [ ! -h $2/$file ]; then
      echo "backing up $2/$file ..."
      backup $2/$file 
  fi
  echo "creating link for $file at $2 ..."
  ln -sv $1 $2
}

REPO=$HOME/dotfiles

link $REPO/.bash_profile ~
link $REPO/.vimrc ~

source $HOME/.bash_profile
