#!/bin/bash

cd
curl -O -L https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
sudo dpkg -i dropbox_2015.10.28_amd64.deb
rm -f dropbox_2015.10.28_amd64.deb
