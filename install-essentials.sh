#!/bin/bash

#First it's important to update the system
sudo apt-get update
sudo apt-get dist-upgrade -y

#Copy some stuff
cd ${0%/*}
cp templates/.bash_aliases ~/
cp templates/empty ~/Templates
cp templates/python.py ~/Templates
cp templates/shell.py ~/Templates

#Fix Ubuntu Software Center font color on GNOME3
sudo sh -c "cat /usr/share/software-center/ui/gtk3/css/softwarecenter.css | sed 's/@define-color light-aubergine #DED7DB;/@define-color light-aubergine #393F3F;/' | sed 's/@define-color super-light-aubergine #F4F1F3;/@define-color super-light-aubergine #393F3F;/' > /usr/share/software-center/ui/gtk3/css/softwarecenter.css"

#Every install is on a different line so you can comment out things that you don't want
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install git -y
sudo apt-get install python-pip -y
sudo apt-get install gufw -y
sudo apt-get install filezilla -y
sudo apt-get install gimp -y
sudo apt-get install inkscape -y
sudo apt-get install grub-customizer -y
sudo apt-get install gparted -y
sudo apt-get install pinta -y
#sudo apt-get install samba -y
sudo apt-get install keepass2 -y
sudo apt-get install wine -y
#sudo apt-get install apache2 php5 libapache2-mod-php5 php5-mcrypt php5-sqlite php5-curl -y

chmod +x *.sh

#f.luxgui
cd ${0%/*} && source fluxgui-install.sh

#Calibre
#cd && sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

#Steam
cd ${0%/*} && source steam-install.sh

#Chrome
cd ${0%/*} && source chrome-install.sh

#cd ${0%/*} && source openfoam-install.sh
