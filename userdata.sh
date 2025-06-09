#!/bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo service httpd start
sudo systemctl enable httpd
sudo yum install git -y
mkdir /gitClone
cd /gitClone

sudo git clone "https://github.com/lukesh-kalam/webapp.git"
cd webapp
sudo cp -r * /var/www/html/

