#!/bin/bash

# Crear directorios -->

mkdir ~/.termux
mkdir ~/src
mkdir ~/src/asciimages

# Copia de assets -->

cp ./assets/font.ttf ~/.termux
cp ./assets/termux.properties ~/.termux
cp ./assets/totenkopf.txt ~/src/asciimages
cp ./assets/.bashrc ~
cp ./assets/.bash_aliases ~

# Paquetes -->

apt update && apt upgrade -y && apt autoremove

apt install -y vim
apt install -y neofetch
# apt install -y git <-- Necesario antes de clonar este repositorio.
apt install -y net-tools 
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
