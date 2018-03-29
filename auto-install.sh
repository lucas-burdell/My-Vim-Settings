#!/bin/bash

echo "installing ViM (if not already installed)"
apt update
apt install vim
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -a $DIR/.vimrc ] 
then
    echo "Copying .vimrc"
    cp $DIR/.vimrc $HOME
fi
if [ -a $DIR/.vim/ ] 
then
    echo "Copying .vim/"
    cp -r $DIR/.vim/ $HOME
fi
