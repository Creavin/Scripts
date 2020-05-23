#!/bin/bash

# Work in progress

echo "Setting up a new Arch xfce environment"
echo "Setting up git"
git config --global user.name creavin
git config --global user.email thomas.creavin@gmail.com
git config --global credential.helper "cache --timeout=86400"
git config --global core.editor "vim"


echo "Installing packages"
sudo pacman -Sy yay
yay -S gvim ranger ristretto evince redshift
yay -S spotify sncli transmission-gtk 
yay autojump cmake


# yay jetbrains mono font

