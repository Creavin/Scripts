#!/bin/bash

# Work in progress

echo "Setting up a new Arch xfce environment"
echo "Setting up git"
git config --global user.name creavin
git config --global user.email thomas.creavin@gmail.com
git config --global credential.helper "cache --timeout=86400"
git config --global core.editor "vim"
git config --global pull.rebase false


echo "Installing packages"
sudo pacman -Sy yay

echo "This part may not work :/, if so install manually x"
yay -S gvim ranger ristretto evince redshift tilix
yay -S transmission-gtk z
yay -S ttf-jetbrains-mono otf-font-awesome
yay -S texmaker texlive-core

echo "Spotify may require to manually add their gpg keys"
yay -S spotify

