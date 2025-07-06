#!/bin/bash


# Arch instalation
if command -v pacman >/dev/null 2>&1; then
   echo 'Using arch btw :p'

   if command -v pyenv >/dev/null 2>&1; then
        echo "pyenv its installed"
   else
        echo "pyenv is NOT installed. Installing..."
        curl -fsSL https://pyenv.run | bash 
   fi # DNF installation
elif command -v dnf >/dev/null 2>&1; then
    echo 'Using Fedora'

    if command -v pyenv >/dev/null 2>&1; then
        echo "pyenv its installed"
   else
        echo "pyenv is NOT installed. Installing..."
        curl -fsSL https://pyenv.run | bash
   fi
# APT installation
elif command -v dnf >/dev/null 2>&1; then
    echo 'Using Ubuntu based linux .-.'

    if command -v pyenv >/dev/null 2>&1; then
        echo "pyenv its installed"
    else
        echo "pyenv is NOT installed. Installing..."
        curl -fsSL https://pyenv.run | bash
    fi
fi

