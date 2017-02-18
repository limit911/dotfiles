#!/bin/bash

SELF_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BACK_TIME=$(date +"%Y%m%d")

if [ -L ~/.vim ]
then
    rm ~/.vim
elif [ -d ~/.vim ]
then
    mv ~/.vim ~/.vim_${BACK_TIME}_bak
fi

if [ -L ~/.vimrc ]
then
    rm ~/.vimrc
elif [ -f ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc_${BACK_TIME}_bak
fi

ln -s $SELF_DIR/vimrcs/vimrc ~/.vimrc
ln -s $SELF_DIR/vimfiles ~/.vim
