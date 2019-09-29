#!/bin/bash

##### Update system packages #####
sudo dnf update

# Copy nautilus templates
cd $curdir
cp templates/.bash_aliases ~/
cp templates/empty ~/Templates
cp templates/python.py ~/Templates
cp templates/shell.sh ~/Templates

##### Package installs #####
# Every install ins on a single line to make it easier to comment out unwanted packages

## System packages ##
sudo dnf install -y make cmake cmake-curses-gui
sudo dnf install -y python-devel python3-devel

## System administration ##
sudo dnf install -y ufw && sudo ufw enable
sudo dnf install -y grub-customizer
sudo dnf install -y gparted
sudo dnf install -y samba
sudo dnf install -y htop

## Dev ##
sudo dnf install -y git
sudo dnf install -y filezilla
sudo dnf install -y awscli
pip install --user virtualenv -y
sudo dnf install -y golang

## Wine ##
sudo dnf install -y wine
sudo dnf install -y playonlinux

## Graphics ##
sudo dnf install -y gimp
sudo dnf install -y inkscape
sudo dnf install -y pinta

## Others ##
sudo dnf install -y keepass


##### Configuration #####

## GIT ##
git config --global user.email "mscansian@gmail.com"
git config --global user.name "Matheus Cansian"
git config --global push.default simple
