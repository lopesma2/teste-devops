#!/bin/bash -xe
sudo curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
sudo sleep 1

sudo cd /home/ubuntu/teste-devops/
sudo git clone https://github.com/herbsjs/todolist-on-herbs.git
sudo cd todolist-on-herbs/
sudo npm install