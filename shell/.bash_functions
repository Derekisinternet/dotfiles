#!/usr/bin/env bash

# make a directory and cd to it in one go:
mkgo() {
    if [ -z "$1" ]; then
        echo "ERROR: no folder name specified"
    else
        FOLDER=$1
        mkdir $FOLDER
        cd $FOLDER
    fi
}

# grep a directory instead of just one file:
dgrep() {
     if [ -z "$1" ]; then
         echo "ERROR: no search criteria specified"
     else
         grep -iRn "$@" .
     fi    
}
