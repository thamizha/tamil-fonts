#!/bin/bash -x
sudo cp -v -i ./*.ttf   /Library/Fonts 
# should we do this instead ?
# sudo cp -vi `find ./ | grep -i -e 'ttf$'` /usr/share/fonts/truetype/
sudo fc-cache -f -v
