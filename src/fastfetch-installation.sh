#!/bin/bash

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

# verify if the configuration whas applied
if [ -d "$HOME/configs/fastfetch-my-conf" ]; then
   echo 'configs whas installed'
else
   echo 'installing fastfetch'
   git clone git@github.com:davieduardo001/fastfetch-my-conf.git "$HOME/configs/fastfetch-my-conf"
fi