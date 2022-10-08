#!/bin/bash
#install apache
sudo apt update -y
sudo apt upgrade -y
sudo apt install apache2 -y
#download website
sudo git clone https://github.com/fierceray/tindog.git
sudo mv tindog app
sudo mv app/000-default.conf /etc/apache2/sites-enabled/
sudo mv app /var/www/html/
#run apache
sudo systemctl start apache2
sudo systemctl enable apache2
