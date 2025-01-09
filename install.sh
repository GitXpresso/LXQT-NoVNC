#!/bin/bash
# Script made to make a little bit faster for installing lxqt novn
cd ~/ 
git clone https://github.com/gitxpresso/Linux-NOVNC
sudo apt update
echo "installing tasksel"
sudo apt install tasksel -y
echo "install dialog for tasksel to work"
sudo apt install dialog -y
echo "installing the LXQT Package"
sudo apt install lxqt -y
echo "Installing tightvncserver"
sudo apt install tigervnc-standalone-server tigervnc-viewer -y
