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
# $1 - the phrase to grep for
# $2 - an optional directory. Defaults to "."
dgrep() {
     if [ -z "$1" ]; then
         echo "ERROR: no search criteria specified"
     else
         if [ -z "$2" ]; then
            dir='.'
         else
            dir="$2"
         fi
         grep -iRn "$1" "$dir"
     fi    
}

# ssh out to a hub:
hssh() {
    if [ -z "$1" ]; then
        echo "ERROR: no hub IP specified"
    else
        ssh -i ~/.ssh/aws-ss-reTeam.pem ec2-user@$1
    fi
}

# pretty print my PATH
paths() {
  echo -e ${PATH//:/\\n}
}
