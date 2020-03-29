#!/bin/bash

# Work in progress

echo  "Setting up a new Arch xfce environment"
pacman -Sy yay
yay -S gvim ranger
yay -S spotify sncli transmission-gtk

git config --global user.name creavin
git config --global user.email thomas.creavin@gmail.com


