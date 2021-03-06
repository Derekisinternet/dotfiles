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

link $REPO/.bashrc ~
link $REPO/.vimrc ~

# if for some reason there's no reference to .bashrc in .bash_profile, add a source" 
if [ -f $HOME/.bash_profile ]; then
    echo '~/.bash_profile found. Checking for reference to .bashrc . . .'
    if [grep -q .bashrc $HOME/.bash_profile]; then
        echo 'Found reference. Continuing . . .'
    else
        echo 'No reference found. Adding one . . .'
        echo 'source $HOME/.bashrc' >> $HOME/.bash_profile
    fi
else
    # otherwise, create the file and append to it.
    echo "creating .bash_profile . . ."
    echo 'source $HOME/.bashrc' >> $HOME/.bash_profile
fi

source $HOME/.bashrc
