#!/bin/bash
cd
curl -O -L "https://downloads.slack-edge.com/linux_releases/slack-desktop-2.2.1-amd64.deb"
sudo dpkg -i slack-desktop-2.2.1-amd64.deb
rm -f slack-desktop-2.2.1-amd64.deb
