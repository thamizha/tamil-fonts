#!/bin/bash -x

sudo cp -vi ./fonts-installer/fontfiles/*Uni*   /usr/share/fonts/truetype/ 
# should we do this instead ?
# sudo cp -vi `find ./ | grep -i -e 'ttf$'` /usr/share/fonts/truetype/
sudo fc-cache -f -v

