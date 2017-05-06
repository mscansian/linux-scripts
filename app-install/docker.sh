#!/bin/bash

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

sudo apt-get update

sudo apt-get install linux-image-extra-$(uname -r)
sudo apt-get -y install docker-ce

sudo service docker start
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker

sudo pip install docker-compose
