#!/bin/bash

# Work in progress

echo  "Setting up a new Arch xfce environment"
sudo pacman -Sy yay
yay -S gvim ranger ristretto evince redshift
yay -S spotify sncli transmission-gtk 
yay autojump cmake

git config --global user.name creavin
git config --global user.email thomas.creavin@gmail.com
git config --global credential.helper "cache --timeout=86400"


