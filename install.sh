# !/bin/bash

clear
cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
gunzip bundle.tar.gz && tar xvf bundle.tar && rm bundle.tar
gunzip change-solarized-color.tar.gz && tar xvf change-solarized-color.tar && rm change-solarized-color.tar
echo "\n
Yay! You are not done yet - now go set your terminal colors to solarized colors. \n
How to do this? Git clone the same repo onto your mac and extract the solarized term tar and double click the light option from the explorer."
