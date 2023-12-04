#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install apache2 -y

status=$(systemctl is-active apache2) && echo "O Apache2 está em execução." || echo "O Apache2 está inativo."

sudo git clone https://github.com/denilsonbonatti/mundo-invertido.git

cd mundo-invertido
sudo cp -R * /var/www/html

ip a | grep 192.