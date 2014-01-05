#!/bin/sh

# check we have git installed
command -v git > /dev/null 2 >& 1 || { echo >&2 "Please install git."; exit 1; }

# vimto install location
VIMTO="$HOME/.vimto/"

# exit if vimto is already installed
if [ -d "$VIMTO" ]
then
  echo "$VIMTO already exists."
  exit
fi

# clone repo
echo "Cloning vimto into $VIMTO"
git clone https://github.com/wridgers/vimto.git $VIMTO

# pull all the submodules
echo "Updating git submodules, this may take a while."

cd $VIMTO
git submodule init
git submodule sync
git submodule update
cd -

# backup vimrc if it already exists
if [ -f "$HOME/.vimrc" ]
then
  echo "$HOME/.vimrc already exists. Making a backup."
  mv $HOME/.vimrc $HOME/.vimrc.backup
fi

# copy the template vimrc file into place
echo "Adding template vimrc file to $HOME/.vimrc"
cp $VIMTO/templates/vimrc.template $HOME/.vimrc

# done. :)
echo "Done!"

