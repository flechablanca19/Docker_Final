#!/bin/sh
# Script rápido para instalar docker
sudo apt-get install -y apt-transport-https
\ ca-certificates curl software-properties-common
\ wget htop git ufw
\ python python-pip python3 python3-pip
\ screen proxychains tor
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
# Linux post-install
sudo groupadd docker sudo usermod -aG docker $USER
# Docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
# control
sudo systemctl enable docker sudo docker -- version sudo docker-compose
--version
# final
echo Reinicie para finalizar
