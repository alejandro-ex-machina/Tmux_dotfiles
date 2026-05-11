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
if read -p "Pulsa S para aceptar: " resp; then
    if [[ "$resp" == [Ss] ]]; then
        echo "Clonando repositorio de ..."

        cd ~/src
        git clone https://github.com/alejandro-ex-machina/quotes.git

        cd ~
    fi
fi  

echo "Instalar servidor SSH"
if read -p "Pulsa S para aceptar: " resp ; then
    if [[ "$resp" == [Ss] ]]; then
        echo "Instalando ..."

        apt install openssh
        apt install procps
    fi
fi  

echo "Instalar Apache y soporte PHP"
if  read -p "Pulsa S para aceptar: " resp ; then
    if[[ "$resp" == [Ss] ]]; then
        echo "Instalando ..."

        cp cp ./assets/httpd.conf /data/data/com.termux/files/usr/etc/apache2/
        apt install apache2 php php-apache
    fi
fi  

