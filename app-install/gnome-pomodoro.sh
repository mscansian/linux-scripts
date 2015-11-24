#!/bin/bash

sudo apt-get install gnome-common intltool valac libglib2.0-dev gobject-introspection libgirepository1.0-dev libgtk-3-dev libgnome-desktop-3-dev libcanberra-dev libdbus-glib-1-dev libgstreamer1.0-dev libtelepathy-glib-dev fonts-droid -y

cd
git clone -b gnome-3.16 https://github.com/codito/gnome-pomodoro.git
cd gnome-pomodoro

./autogen.sh --prefix=/usr --datadir=/usr/share
make
sudo make install
rm -rf gnome-pomodoro

