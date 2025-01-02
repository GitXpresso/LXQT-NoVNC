#!/bin/bash
echo "not fully automatic"
echo "Updating & Upgrading Your System"
sudo apt update && sudo apt upgrade -y
echo "Installing required packages"
sudo apt install -y lubuntu-desktop lxqt fluxbox i3 awesomewm
cd ~/
git clone https://github.com/NoVNC/NoVNC
cd noVNC
openssl req -new -x509 -days 365 -nodes -out self.pem -keyout self.pem
echo "making start.sh executable"
chmod u+x start.sh
echo "Runing the server"
./start.sh
