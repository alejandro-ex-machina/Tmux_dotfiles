#!/bin/bash

# Tipografía -->

mkdir ~/.termux
mkdir ~/.asciimages
mkdir ~/src

cp ./assets/font.ttf ~/.termux
cp ./assets/termux.properties ~/.termux
cp ./assets/totenkopf.ttf ~/.asciimages

# Paquetes -->

apt update && apt upgrade -y && apt autoremove

apt install -y neofetch
apt install -y vim
apt install -y git
apt install -y nettols htop wget curl
apt install -y python php
apt install -y pandoc

# Clonar repositorios -->

cd ~/src
git clone https://github.com/alejandro-ex-machina/quotes.git

# Recargar preferecias de Tmux -->

termux-reload-settings
