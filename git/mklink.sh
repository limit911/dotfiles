#!/bin/bash

SELF_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BACK_TIME=$(date +"%Y%m%d")

if [ -f ~/.gitconfig ]
then
    mv ~/.gitconfig ~/.gitconfig_${BACK_TIME}.bak
fi

ln -s $SELF_DIR/git.gitconfig ~/.gitconfig
