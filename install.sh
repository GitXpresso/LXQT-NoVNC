#!/bin/bash
cd ~/
git clone https://github.com/gitxpresso/LXQT-NoVNC
echo "not a fully automatic shell script"
echo "Updating & Upgrading Your System"
sudo apt update && sudo apt upgrade -y
echo "Installing required packages"
sudo apt install -y lubuntu-desktop lxqt fluxbox i3 awesome websockify novnc 
echo "manually setup your vncserver configuration"
export vncpasswd=lxqt
git clone https://github.com/NoVNC/NoVNC
echo "You need create a new self-signed certificate inside the noVNC folder so that you can connect over HTTPS"
cd noVNC
openssl req -new -x509 -days 365 -nodes -out self.pem -keyout self.pem
echo "speeding up NoVnc Speed using numpy"
sudo apt-get install -y python3-pip
pip3 install numpy
echo -e "moving the xstartup file from novnc-lxqt to the .vnc folder in /home/"
sudo mv -f ~/LXQT-NoVNC/xstartup ~/.vnc
echo "making start.sh executable"
chmod u+x start.sh
echo "Runing the server"
./start.sh
echo "password is lxqt"
