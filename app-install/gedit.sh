#!/bin/bash

cd
wget https://github.com/jpfleury/gedit-markdown/archive/master.zip
unzip master.zip
rm master.zip
cd gedit-markdown-master
./gedit-markdown.sh install
cd
rm -rf gedit-markdown-master
