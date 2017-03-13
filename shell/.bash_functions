#!/usr/bin/env bash
mkgo() {
    if [ "$1" = null ]; then
        echo "Error: no folder name specified"
    else
        FOLDER=$1
    fi

    mkdir $FOLDER
    cd $FOLDER
}
