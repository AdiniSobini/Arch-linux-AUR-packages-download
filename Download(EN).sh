#!/bin/bash

echo "Hi"
cd ~
cd Pobrane
mkdir Pobieranie 
cd Pobieranie
echo "Paste link from AUR"
read zmienna 
echo "Thx"
git clone $zmienna
cd *
makepkg -s
a="$(find ./ -name "*.pkg.tar.zst")"
sudo pacman -U $a
cd .. 
rm -rf *


