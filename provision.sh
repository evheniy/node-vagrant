#!/bin/bash

sudo apt-get update
yes | sudo apt-get upgrade
yes | sudo apt-get dist-upgrade
yes | sudo apt-get install --reinstall locales git curl language-pack-en-base nginx
sudo sh -c "sudo echo 'LC_ALL=\"en_US.UTF-8\"' >> /etc/environment"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

echo "source /home/ubuntu/.nvm/nvm.sh" >> /home/ubuntu/.profile
source /home/ubuntu/.profile

nvm install stable
nvm alias default stable

npm cache clean

npm i -g ntl
