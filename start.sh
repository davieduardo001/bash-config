#!/bin/bash

if command -v lolcat >/dev/null 2>&1; then
  echo "lolcat is installed"
else
  echo "lolcat is NOT installed. Installing..."
    sudo dnf install lolcat   
fi

if command -v fastfetch >/dev/null 2>&1; then
  echo "lolcat is fastfetch"
else
  echo "fastfetch is NOT installed. Installing..."
    sudo dnf install fastfetch   
fi

echo 'Starting script...'
echo 'copy my file to home' 
cp $HOME/configs/bash-config/bash.config $HOME/
echo 'backup the currently bashrc file'
mv $HOME/.bashrc $HOME/.bashrc.back
echo 'use the .config as the bashrc file'
mv  $HOME/bash.config $HOME/.bashrc
