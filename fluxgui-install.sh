#!/bin/bash

#f.lux gui
sudo apt-get install python-pip python-gconf python-glade2 python-appindicator -y
sudo pip install pexpect
cd
git clone https://github.com/Kilian/f.lux-indicator-applet.git
cd f.lux-indicator-applet
sudo python setup.py install
cd ..
sudo rm -rf ~/f.lux-indicator-applet
cd ${0%/*}
mkdir -p ~/.config/autostart
cp templates/fluxgui.desktop ~/.config/autostart
