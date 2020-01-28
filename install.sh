#!/bin/bash

if [[ -d ~/.bash/ ]] && [[ -e ~/.bash/ ]]; then
    git pull ~/.bash/
else
    git clone git@github.com:stigvoss/dotbash.git ~/.bash/
fi

if [ -z $(cat ~/.bashrc | grep "# dotbash") ]; then

cat >> ~/.bashrc <<EOL

# dotbash
if [ -f ~/.bash/aliases.sh ]; then
    . ~/.bash/aliases.sh
fi

EOL

fi
