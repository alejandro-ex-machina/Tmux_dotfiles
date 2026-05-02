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

apt install -y vim
apt install -y neofetch
# apt install -y git <-- Necesario antes de clonar este repositorio.
apt install -y net-tols 
apt install -y htop
apt install -y wget
apt install -y curl
apt install -y python
apt install -y php
apt install -y pandoc

# Clonar repositorios -->

cd ~/src
git clone https://github.com/alejandro-ex-machina/quotes.git

# Recargar preferecias de Tmux -->

termux-reload-settings
