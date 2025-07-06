#!/bin/bash

echo 'Starting script...'
echo 'copy my file to home' 

# dependecies
chmod +x ./src/fastfetch-installation.sh
./src/fastfetch-installation.sh
chmod +x ./src/pyenv.sh
./src/pyenv.sh

## commands
cp $HOME/configs/bash-config/bash.config $HOME/
echo 'backup the currently bashrc file'
mv $HOME/.bashrc $HOME/.bashrc.back
echo 'use the .config as the bashrc file'
mv  $HOME/bash.config $HOME/.bashrc