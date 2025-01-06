**`Why was this project archived and abandoned so fast because lxqt had errors when i run lxqt in the browser using Google cloud shell it had errors with lxqt-panel and other things that make lxqt function properly, and half of the other flavours like gnome which couldnt run because google cloud shell didnt have systemd and kde had errors like lxqt and after those errors it showed only white and black pixels and thats why only lxde and lxqt is left`**
## About 
This project is a tutorial of how to run the linux distros below in your browser using novnc,

**_The one with asterisk next to it in the table of contents mean the package is not added to latest version of ubuntu_**

## Table of Contents

* [LDE](#LDE)
  * [Tutorial](#Tutorial)
* [LXQT](#LXQT)
  * [Tutorial](#Tutorial)
  * [What lxqt looks like](#what-lxqt-looks-like)
* [How I made this project](#How-I-made-this-project)
**`Why was this project archived and abandoned so fast because lxqt had errors when i run lxqt in the browser using Google cloud shell it had errors with lxqt-panel and other things that make lxqt function properly, and half pf the other flavours like gnome which couldnt run because google cloud shell didnt have systemd and kde had errors like lxqt and after those errors it showed only white and black pixels, running .
## About 
This project is a tutorial of how to run the linux distros below in your browser using novnc,

**_The one with asterisk next to it in the table of contents mean the package is not added to latest version of ubuntu_**

## Table of Contents

* [LXDE](#LXDE)
  * [Tutorial](#Tutorial)
* [LXQT](#LXQT)
  * [Tutorial](#Tutorial)
  * [What lxqt looks like](#what-lxqt-looks-like)
* [How I made this project](#How-I-made-this-project)
# LXDE
Update your linux system
```
sudo apt update
```
Next, install LXQT
```
sudo apt install lxde -y
```
Install tightvncserver 
```
sudo apt install tightvncserver -y
```
Setup vncpassword by putting the following command below
```
vncserver
```
create the contents of the xstartup file in ~/.vnc using cat
>NOTE cat will already create the contents of the file and put the file in Directory "~/.vnc/" after you push enter after pasting the command below
```
cat <<EOF > ~/.vnc/xstartup
#!/bin/bash
startlxde &
EOF
```
move to home and clone the NoVNC repository
cd ~/
git clone https://github.com/novnc/noVNC.git
Move to the cloned repository
```
cd NoVNC
```
Install Openssl 
```
sudo apt install openssl -y
```
moved to Novnc cloned repository to create a new self-signed certificate inside the noVNC folder so that you can connect over HTTPS
```
cd noVNC
openssl req -new -x509 -days 365 -nodes -out self.pem -keyout self.pem
```

>Note
>Optional to install numpy to make novnc faster
```
sudo apt install pip3-python -y
pip install numpy -y
```

clone this repository and run start.sh using the command below
```
cat <<EOF > ~/start.sh
#!/bin/bash
IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
echo "Connect with https://$IP:8443/vnc.html?host=$IP&port=8443"
vncserver :1
~/noVNC/utils/novnc_proxy --vnc localhost:5901 --listen 8443
vncserver -kill :1
EOF
```
Finally run the start.sh file
```
bash ~/start.sh
```
# LXQT

sudo apt update
```
Next, install 
```
sudo apt install lxqt lubuntu-desktop xscreensaver -y
```
Install tightvncserver 
```
sudo apt install tightvncserver -y
```
Setup vncpassword by putting the following command below
```
vncserver
```
create the contents of the xstartup file in ~/.vnc using cat
>NOTE cat will already create the contents of the file and put the file in Directory "~/.vnc/" after you push enter after pasting the command below
```
cat <<EOF > ~/.vnc/xstartup
#!/bin/bash
startlxqt &
EOF
```
move to home and clone the NoVNC repository
cd ~/
git clone https://github.com/novnc/noVNC.git
Move to the cloned repository
```
cd NoVNC
```
Install Openssl 
```
sudo apt install openssl -y
```
moved to Novnc cloned repository to create a new self-signed certificate inside the noVNC folder so that you can connect over HTTPS
```
cd noVNC
openssl req -new -x509 -days 365 -nodes -out self.pem -keyout self.pem
```

>Note
>Optional to install numpy to make novnc faster
```
sudo apt install pip3-python -y
pip install numpy -y
```

clone this repository and run start.sh using the command below
```
cat <<EOF > ~/start.sh
#!/bin/bash
IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
echo "Connect with https://$IP:8443/vnc.html?host=$IP&port=8443"
vncserver :1
~/noVNC/utils/novnc_proxy --vnc localhost:5901 --listen 8443
vncserver -kill :1
EOF
```
Finally run the start.sh file
```
bash ~/start.sh
```
## What lxqt looks like
![LXQT](https://github.com/GitXpresso/Linux-NoVNC/blob/main/Screenshot%202025-01-05%20122348.png?raw=true)


This project can made into other distros like kde, dde, mate, and other distros that made ubuntu flavours
Just have made the other repository for the other flavours eventually there will be all in one repository,  yes the tutorial will be tested.
## How I made this project
that helped me with this project and yes all i had to was replaced "xfce4 and xfce4-goodies" with "lxqt" and change "startxfce" with "startlxqt" in the xstartup file, if you want to install xfce4 vnc go to this link "[Link](https://jeremypeterson.com/posts/2023-06-23-ubuntu-22-vnc/)" 
