#!/bin/sh

# check we have git installed
command -v git > /dev/null 2 >& 1 || { echo >&2 "Please install git."; exit 1; }

# vimto install location
VIMTO="$HOME/.vimto/"

# do upgrade
echo "Upgrading vimto..."
cd $VIMTO
git pull origin master

# updating submodules
echo "Updating submodules..."
git submodule init
git submodule sync
git submodule update

# go back to original directory
cd -

# done :)
echo "Done!"

