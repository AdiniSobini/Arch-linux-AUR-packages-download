#!/bin/bash

echo "Cześć"
cd ~
cd Pobrane
mkdir Pobieranie 
cd Pobieranie
echo "Podaj link AUR"
read zmienna 
echo "dziękuje za link"
git clone $zmienna
cd *
makepkg -s
a="$(find ./ -name "*.pkg.tar.zst")"
sudo pacman -U $a
cd .. 
rm -rf *


