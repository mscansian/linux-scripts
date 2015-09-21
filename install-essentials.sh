#!/bin/bash

#First it's important to update the system
sudo apt-get update
sudo apt-get dist-upgrade -y

#Copy some stuff
cd ${0%/*}
cp templates/.bash_aliases ~/

#Every install is on a different line so you can comment out things that you don't want
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install git -y
sudo apt-get install pip -y
sudo apt-get install gufw -y
sudo apt-get install filezilla -y
sudo apt-get install gimp -y
sudo apt-get install inkscape -y
sudo apt-get install grub-customizer -y
sudo apt-get install gparted -y
sudo apt-get install pinta -y
sudo apt-get install keepass2 -y
sudo apt-get install wine -y

#f.luxgui
cd ${0%/*} && chmod +x fluxgui-install.sh && source fluxgui-install.sh

#Calibre
cd && sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

#Steam
cd ${0%/*} && chmod +x steam-install.sh && source steam-install.sh

#Chrome
cd ${0%/*} && chmod +x chrome-install.sh && source chrome-install.sh
