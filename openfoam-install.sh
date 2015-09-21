#!/bin/bash

sudo add-apt-repository http://www.openfoam.org/download/ubuntu
sudo apt-get update
sudo apt-get install openfoam240 -y --force-yes
echo source /opt/openfoam240/etc/bashrc >> ~/.bashrc
source ~/.bashrc
