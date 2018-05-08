#!/bin/bash
#cd /var/www/html/
sudo chown -R www-data:www-data .
sudo chmod -R 777 .
sudo /etc/init.d/nginx restart
