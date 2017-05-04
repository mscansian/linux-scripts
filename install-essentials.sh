#!/bin/bash

curdir=$(pwd)
chmod +x *.sh
chmod +x app-install/*.sh

##### Update system packages #####
sudo apt-get update
sudo apt-get dist-upgrade -y

# Copy nautilus templates
cd $curdir
cp templates/.bash_aliases ~/
cp templates/empty ~/Templates
cp templates/python.py ~/Templates
cp templates/shell.sh ~/Templates

##### Package installs #####
# Every install ins on a single line to make it easier to comment out unwanted packages

## System packages ##
sudo apt-get install -y ubuntu-restricted-extras
sudo apt-get install -y make cmake cmake-curses-gui
sudo apt-get install -y python-dev python3-dev
sudo apt-get install -y python-pip python3-pip
sudo apt-get install -y xdotool

## System administration ##
sudo apt-get install -y gufw
sudo apt-get install -y grub-customizer
sudo apt-get install -y gparted
sudo apt-get install -y samba
sudo apt-get install -y htop

## Dev ##
sudo apt-get install -y git gitk
sudo apt-get install -y filezilla
sudo apt-get install -y awscli
sudo pip install virtualenv -y
#sudo apt-get install -y apache2
#sudo apt-get install -y php5 libapache2-mod-php5 php5-mcrypt php5-sqlite php5-curl
#sudo apt-get install -y nginx
sudo apt-get install -y golang

## Wine ##
sudo apt-get install -y wine
sudo apt-get install -y playonlinux

## Virtualbox ##
sudo apt-get install -y virtualbox

## Graphics ##
sudo apt-get install -y gimp
sudo apt-get install -y inkscape
sudo apt-get install -y pinta
sudo apt-get install -y gpick

## Video ##
sudo apt-get install -y kazam

## Desktop ##
sudo apt-get install -y gedit-plugins
sudo apt-get install -y gnome-shell-pomodoro

## Others ##
sudo apt-get install -y keepass2

## Languages ##
sudo apt-get install aspell-pt


##### Configuration #####

## GIT ##
git config --global user.email "mscansian@gmail.com"
git config --global user.name "Matheus Cansian"
git config --global push.default simple

## Ubuntu Software Center ##
# Fix for GNOME Shell dark theme
#sudo sh -c "cat /usr/share/software-center/ui/gtk3/css/softwarecenter.css | sed 's/@define-color light-aubergine #DED7DB;/@define-color light-aubergine #393F3F;/' | sed 's/@define-color super-light-aubergine #F4F1F3;/@define-color super-light-aubergine #393F3F;/' > /usr/share/software-center/ui/gtk3/css/softwarecenter.css"

##### Additional software #####

cd $curdir && source app-install/calibre.sh
cd $curdir && source app-install/steam.sh
cd $curdir && source app-install/chrome.sh
cd $curdir && source app-install/spotify.sh
cd $curdir && source app-install/slack.sh
cd $curdir && source app-install/dropbox.sh
cd $curdir && source app-install/docker.sh

#### Notifications ####
echo "These softwares are missing, but you should install:"
echo "Sublime Text https://www.sublimetext.com"
