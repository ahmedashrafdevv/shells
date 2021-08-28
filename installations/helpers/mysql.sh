#!/bin/bash
echo "installing mysql"
sudo apt install gnupg
cd /tmp
wget https://dev.mysql.com/get/mysql-apt-config_0.8.13-1_all.deb
sudo dpkg -i mysql-apt-config*
sudo apt update
sudo apt install mysql-server
sudo systemctl status mysql
mysql_secure_installation
echo "successfully installed mysql"
