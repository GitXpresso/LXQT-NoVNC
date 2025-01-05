#!/bin/bash
# Script made to make a little bit faster for installing lxqt novn
sudo apt update
echo "install the default window manager for lxqt"
sudo apt install openbox -y
echo "installing the LXQT Package"
sudo apt install lxqt -y
echo "Installing tightvncserver"
sudo apt install tightvncserver -y
