#!/bin/bash -x

if [ -d /usr/share/fonts/truetype ];
then
   #all good
else
   sudo mkdir -p  /usr/share/fonts/truetype
fi
sudo cp -vi ./fonts-installer/fontfiles/*Uni*   /usr/share/fonts/truetype/ 
# should we do this instead ?
# sudo cp -vi `find ./ | grep -i -e 'ttf$'` /usr/share/fonts/truetype/
sudo fc-cache -f -v

