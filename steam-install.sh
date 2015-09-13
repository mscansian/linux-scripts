#!/bin/bash

cd
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i steam.deb
rm -f steam.deb
