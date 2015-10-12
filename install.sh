# !/bin/bash

clear
cp vimrc ~/.vimrc
gunzip bundle.tar.gz && tar xvf bundle.tar && rm bundle.tar
gunzip change-solarized-color.tar.gz && tar xvf change-solarized-color.tar && rm change-solarized-color.tar