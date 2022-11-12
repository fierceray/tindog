#!/bin/bash
#install apache
sudo apt update -y
sudo apt upgrade -y
#install package
sudo apt install python3-pip -y
sudo apt install apache2 -y
sudo apt-get install libapache2-mod-wsgi-py3 -y
sudo git clone https://github.com/fierceray/tindog.git
sudo mv tindog app
sudo pip3 install -r app/requirements.txt 
sudo ln -s /app /var/www/html/app
sudo cp /app/000-default.conf /etc/apache2/sites-enabled/
sudo systemctl restart apache2
sudo systemctl enable apache2
