#!/bin/bash

if [ -e "$HOME/.oh-my-bash" ]; then
  echo "Oh my bash downloaded!"
else
  echo "Oh my bash not downloaded"
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
fi

echo 'Starting script...'
echo 'copy my file to home' 
cp $HOME/configs/bash-config/bash.config $HOME/
echo 'backup the currently bashrc file'
mv $HOME/.bashrc $HOME/.bashrc.back
echo 'use the .config as the bashrc file'
mv  $HOME/bash.config $HOME/.bashrc
