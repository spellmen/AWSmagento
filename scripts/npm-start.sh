#!/bin/bash
cd /var/www/html/AWSmagento/
sudo chown -R www-data:www-data .
sudo chmod -R 777 var/
sudo chmod -R 777 pub/
sudo /etc/init.d/nginx restart
