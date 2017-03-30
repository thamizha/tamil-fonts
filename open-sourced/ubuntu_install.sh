#!/bin/bash -x

sudo cp -vi ./*.ttf  /usr/share/fonts/truetype/ 
sudo fc-cache -f -v

