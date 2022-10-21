#!/bin/bash

# update system
sudo apt-get update -y

# upgrade system
sudo apt-get upgrade -y

# install web-server called Nginx
sudo apt-get install nginx -y

# restart nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Install python
sudo apt-get install python -y
sudo apt-get install python-software-properties

# Install node.js - get node setup file using curl
# curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
# Latest Version, Used when running two VM: app and database
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# Install node.js
sudo apt-get install nodejs -y

# Install Process Manager

sudo npm install pm2 -g

# Navigate to the `app` directory

cd /home/vagrant/app

# Install NPM Dependencies
sudo npm install
