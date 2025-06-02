#!/bin/bash

if command -v nala >/dev/null 2>&1; then
  echo "Nala is installed"
else
  echo "Nala is NOT installed. You can install it with: sudo apt install nala"
fi

if [ -e "$HOME/.oh-my-bash" ]; then
  echo "Oh my bash downloaded!"
else
  echo "Oh my bash not downloaded. Downloading"
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
fi

if command -v neofetch >/dev/null 2>&1; then
  echo "neofetch is installed"
else
  echo "neofetch is NOT installed. Installing..."
    sudo nala install neofetch   
fi

if command -v lolcat >/dev/null 2>&1; then
  echo "lolcat is installed"
else
  echo "lolcat is NOT installed. Installing..."
    sudo nala install lolcat   
fi

echo 'Starting script...'
echo 'copy my file to home' 
cp $HOME/configs/bash-config/bash.config $HOME/
echo 'backup the currently bashrc file'
mv $HOME/.bashrc $HOME/.bashrc.back
echo 'use the .config as the bashrc file'
mv  $HOME/bash.config $HOME/.bashrc
