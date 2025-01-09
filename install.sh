#!/bin/bash
# Script made to make a little bit faster for installing lxqt novnc
BWhite='\033[1;37m'       # White
BYellow='\033[1;33m'      # Yellow
BBlack='\033[1;30m'        # Black
cd ~/ 
git clone https://github.com/gitxpresso/Linux-NOVNC
sudo apt update
echo -e "${BBlack}installing tasksel"
sudo apt install tasksel -y
echo -e "${BBlack}install dialog for tasksel to work"
sudo apt install dialog -y
echo -e "${BBlack}Installing tightvncserver"
sudo apt install tigervnc-standalone-server tigervnc-viewer -y
echo "make sure your terminal is tall and wide, or just tall in order for dialog to work"
echo -e "${BWhite}if you get an apt-get error with tasksel"
echo -e "${BYellow}starting tasksel"
sudo tasksel
echo "did you get this error?"
echo "debconf: DbDriver "config": /var/cache/debconf/config.dat is locked by another process: Resource temporarily unavailable
tasksel: debconf failed to run"