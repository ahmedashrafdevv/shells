#!/bin/bash
echo "installing laravel"
sudo apt-get install curl
sudo apt-get install php-cli php-gd php-mbstring php-mcrypt php-zip php-opcache php-xml
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
echo "successfully installed laravel"
