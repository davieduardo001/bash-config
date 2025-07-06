#!/bin/bash

echo 'Starting script...'
echo 'copy my file to home' 

# Arch instalation
if command -v pacman >/dev/null 2>&1; then
   echo 'Prociding with the arch installation'

   if command -v fastfetch >/dev/null 2>&1; then
      echo "lolcat is fastfetch"
   else
      echo "fastfetch is NOT installed. Installing..."
      yay -S fastfetch   
   fi
elif command -v dnf >/dev/null 2>&1; then
    echo 'its using dnf'
fi

## commands
cp $HOME/configs/bash-config/bash.config $HOME/
echo 'backup the currently bashrc file'
mv $HOME/.bashrc $HOME/.bashrc.back
echo 'use the .config as the bashrc file'
mv  $HOME/bash.config $HOME/.bashrc