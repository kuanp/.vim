# !/bin/bash

clear
cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
gunzip bundle.tar.gz && tar xvf bundle.tar && rm bundle.tar
gunzip change-solarized-color.tar.gz && tar xvf change-solarized-color.tar && rm change-solarized-color.tar && cp -r change-solarized-color ..
echo "\n
Yay! You are almost done, 2 more things: \n
1. edit ~/.bashrc (with vim or something) and check your devtools setting.
2. You now go set your terminal colors to solarized colors. \n
How to do this? Git clone the same repo onto your mac and extract the solarized term tar (or run install.sh), go into that extracted folder, and double click the light option from the explorer."
