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
apt install -y net-tools 
apt install -y htop
apt install -y wget
apt install -y curl
apt install -y python
apt install -y php
apt install -y pandoc

# Recargar preferecias de Tmux -->

termux-reload-settings

# Clonar repositorios -->

echo "Clonar repositorio de citas"
read -p "Pulsa S para aceptar: " resp; 
if [[ "$resp" == "S" || "$resp" == "s" ]]; then
    echo "Clonando repositorio de ..."

    cd ~/src
    git clone https://github.com/alejandro-ex-machina/quotes.git

    cd ~
fi  

echo "Instalar servidor SSH"
read -p "Pulsa S para aceptar: " resp; 
if [[ "$resp" == "S" || "$resp" == "s" ]]; then
    echo "Instalando ..."

    apt install openssh
    apt install procps
fi

echo "Instalar Apache y soporte PHP"
read -p "Pulsa S para aceptar: " resp; 
if [[ "$resp" == "S" || "$resp" == "s" ]]; then
    echo "Instalando ..."

    cp cp ./assets/httpd.conf /data/data/com.termux/files/usr/etc/apache2/
    apt install apache2 php php-apache
fi  
