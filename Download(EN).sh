#!/bin/bash

echo "Hi"
cd ~
cd Download
mkdir Downloading
cd Downloading
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


