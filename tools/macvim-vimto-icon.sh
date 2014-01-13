#!/bin/bash

echo -n "Installing vimto icon for MacVim ..."

if [ ! -f /Applications/MacVim.app/Contents/Resources/MacVim.icns ]
then
  echo " Error, MacVim is not installed!"
  exit 1;
fi

cp ~/.vimto/misc/MacVim.icns /Applications/MacVim.app/Contents/Resources/MacVim.icns

echo " Done. :)"
exit;

