## About 
This project is a tutorial of how to run the linux distros below in your browser using novnc 
## Table of Contents

* [Kde](#Kde)
  
* [Kde](#Gnome)
  
* [LXQT](#LXQT)
    
>Note the blockquoted text means I have not yet tested to be true

The one with asterisk next to it mean the package is not added to latest version of ubuntu

Since the linux distros are not in a docker container you can use flathub and `systemctl` and use fuse that makes running .appimage files possible and other things you can't do in a docker container.
# Kde
## Tutorial
On how to run Kde in a browser
First update your linux system
```
sudo apt update
```
Next install the gnome packages
```
sudo apt install kde -y
```
Install tightvncserver 
```
sudo apt install tightvncserver -y
```
Setup vncpassword by putting the following command below
```
vncserver
```
move to home and clone the NoVNC repository
```
cd ~/ && git clone https://github.com/novnc/NoVNC
```
Move to the cloned repository
```
cd NoVNC
```
Install Openssl 
```
sudo apt install openssl -y
```
create a new self-signed certificate inside the noVNC folder so that you can connect over HTTPS
```
openssl req -new -x509 -days 365 -nodes -out self.pem -keyout self.pem
```
>Note
>Optional to install numpy to make novnc faster
```
sudo apt install pip3-python -y
pip install numpy -y
```
type cat in your terminal to see if came wih the linux distro your currently using or the web cloud ide or cloud ide application y

create the contents of the xstartup file in ~/.vnc using cat
>NOTE cat will already create the contents of the file and put the file in Directory "~/.vnc/" after you push enter after pasting the command below
```
cat <<EOF > ~/.vnc/xstartup
#!/bin/bash
startlxqt &
EOF
```
clone this repository and run start.sh using the command below
```
sudo apt install git -y &&
git clone https://github.com/gitxpresso/linux-novnc.git &&
cd linux-novnc && bash start.sh
```
# Gnome
You can use gnome terminal to install Ubuntu and run ubuntu in gnome
## Tutorial
On how to run Gnome in a browser
First update your linux system
```
sudo apt update
```
Next install the gnome packages
```
sudo apt install gnome gnome-session gnome-terminal -y
```
Install tightvncserver 
```
sudo apt install tightvncserver -y
```
Setup vncpassword by putting the following command below
```
vncserver
```
move to home and clone the NoVNC repository
```
cd ~/ && git clone https://github.com/novnc/NoVNC
```
Move to the cloned repository
```
cd NoVNC
```
Install Openssl 
```
sudo apt install openssl -y
```
create a new self-signed certificate inside the noVNC folder so that you can connect over HTTPS
```
openssl req -new -x509 -days 365 -nodes -out self.pem -keyout self.pem
```
>Note
>Optional to install numpy to make novnc faster
```
sudo apt install pip3-python -y
pip install numpy -y
```
type cat in your terminal to see if came wih the linux distro your currently using or the web cloud ide or cloud ide application y

create the contents of the xstartup file in ~/.vnc using cat
>NOTE cat will already create the contents of the file and put the file in Directory "~/.vnc/" after you push enter after pasting the command below
```
cat <<EOF > ~/.vnc/xstartup
#!/bin/bash
startlxqt &
EOF
```
clone this repository and run start.sh using the command below
```
sudo apt install git -y &&
git clone https://github.com/gitxpresso/linux-novnc.git &&
cd linux-novnc && bash start.sh
```
# LXQT
LXQT in the browser using [NoVNC](https://github.com/novnc/NoVNC/)
Since LXQT is not in a docker container you can use flathub and systemctl and use fuse that makes running .appimage files possible and other things you cant do in a docker container.
## Table of Contents
* [How i made this project](#How-i-made-this-project)
## Tutorial
On how to run LXQT in a browser
First update your linux system
```
sudo apt update
```
next, install the default window manager for lxqt
want to install other window managers like fluxbox, awesome, icewm, and i3 then replace "openbox" below with your favourite window manager
```
sudo apt install openbox -y
```
Next, install LXQT
```
sudo apt install lxqt -y
```
Install tightvncserver 
```
sudo apt install tightvncserver -y
```
Setup vncpassword by putting the following command below
```
vncserver
```
move to home and clone the NoVNC repository
```
cd ~/ && git clone https://github.com/novnc/NoVNC
```
Move to the cloned repository
```
cd NoVNC
```
Install Openssl 
```
sudo apt install openssl -y
```
create a new self-signed certificate inside the noVNC folder so that you can connect over HTTPS
```
openssl req -new -x509 -days 365 -nodes -out self.pem -keyout self.pem
```
>Note
>Optional to install numpy to make novnc faster
```
sudo apt install pip3-python -y
pip install numpy -y
```

create the contents of the xstartup file in ~/.vnc using cat
>NOTE cat will already create the contents of the file and put the file in Directory "~/.vnc/" after you push enter after pasting the command below
```
cat <<EOF > ~/.vnc/xstartup
#!/bin/bash
startlxqt &
EOF
```
clone this repository and run start.sh using the command below
```
sudo apt install git -y &&
git clone https://github.com/gitxpresso/lxqt-novnc.git &&
cd novnc && bash start.sh
```
This project can made into other distros like kde, dde, mate, and other distros that made ubuntu flavours
Just have made the other repository for the other flavours eventually there will be all in one repository,  yes the tutorial will be tested.
## How i made this project
that helped me with this project and yes all i had to was replaced "xfce4 and xfce4-goodies" with "lxqt" and change "startxfce" with "startlxqt" in the xstartup file, if you want to install xfce4 vnc go to this link "[Link](https://jeremypeterson.com/posts/2023-06-23-ubuntu-22-vnc/)" 
