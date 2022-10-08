#/bin/bash
#install apache
apt update -y
apt upgrade -y
apt install apache2 -y
#download website
cd /var/www/html
git clone https://github.com/fierceray/tindog.git
mv tindog app
mv app/000-default.conf /etc/apache2/sites-enabled/
#run apache
systemctl start apache2
systemctl enable apache2
