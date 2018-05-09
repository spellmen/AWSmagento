#!/bin/bash

cd /var/www/html/AWSmagento/
sudo git pull origin master
sudo php bin/magento module:enable Plumrocket_Base
sudo php bin/magento module:enable Plumrocket_SocialLoginFree
sudo php bin/magento module:upgrade
sudo php bin/magento setup:static-content:deploy -f
sudo chown -R www-data:www-data .
sudo chmod -R 777 var/
sudo chmod -R 777 pub/
sudo chmod -R 777 generated/
sudo php bin/magento cache:flush
