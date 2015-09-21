#!/bin/bash

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_15.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list"
sudo apt-get update
sudo apt-get install owncloud-client owncloud-client-nautilus -y
nautilus -q
