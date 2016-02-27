#!/bin/sh

# Basics
sudo apt-get install -y python-software-properties
sudo apt-get -y update

# Install Apache
sudo apt-get install -y apache2

# Install nginx
# sudo add-apt-repository ppa:nginx/stable -y 
# sudo apt-get install -y nginx

# Install MySQL
export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get -q -y install mysql-server
mysqladmin -u root password 123456
