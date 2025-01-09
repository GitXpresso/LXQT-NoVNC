#!/bin/bash
# Script made to make a little bit faster for installing lxqt novnc
BWhite='\033[1;37m'       # White
cd ~/ 
git clone https://github.com/gitxpresso/Linux-NOVNC
sudo apt update
echo "installing tasksel"
sudo apt install tasksel -y
echo "install dialog for tasksel to work"
sudo apt install dialog -y
echo "Installing tightvncserver"
sudo apt install tigervnc-standalone-server tigervnc-viewer -y
echo "make sure your terminal is tall and wide, or just tall in order for dialog to work"
echo "starting tasksel"
echo "${BWhite}if you get an apt-get error with tasksel"