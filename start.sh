#!/bin/bash

echo 'Starting script...'
echo 'copy my file to home' 

# Arch instalation
if command -v pacman >/dev/null 2>&1; then
   echo 'Using arch btw :p'

   if command -v fastfetch >/dev/null 2>&1; then
      echo "fastfetch its installed"
   else
      echo "fastfetch is NOT installed. Installing..."
      yay -S fastfetch   
   fi # DNF installation
elif command -v dnf >/dev/null 2>&1; then
    echo 'Using Fedora'

   if command -v fastfetch >/dev/null 2>&1; then
      echo "fastfetch its installed"
   else
      echo "fastfetch is NOT installed. Installing..."
      sudo dnf install fastfetch
   fi
# APT installation
elif command -v dnf >/dev/null 2>&1; then
    echo 'Using Ubuntu based linux .-.'

   if command -v fastfetch >/dev/null 2>&1; then
      echo "fastfetch its installed"
   else
      echo "fastfetch is NOT installed. Installing..."
      sudo apt install fastfetch
   fi
fi

## commands
cp $HOME/configs/bash-config/bash.config $HOME/
echo 'backup the currently bashrc file'
mv $HOME/.bashrc $HOME/.bashrc.back
echo 'use the .config as the bashrc file'
mv  $HOME/bash.config $HOME/.bashrc