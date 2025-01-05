LXQT in the browser using [NoVNC](https://github.com/novnc/NoVNC/)

Since LXQT is not in a docker container you can use flathub and systemctl and use .appimage files and other things you cant do in a docker container.
# Tutorial
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
cd ~/ && git clone https://github.com/novnc/NoVNC.got
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
>Optional
install numpy to make novnc faster
```
sudo apt install pip3-python -y
pip install numpy -y
```
Creating the xstartup file using touch
```
touch ~/.vnc/xstartup
```
create the contents of the xstartup file in ~/.vnc using cat
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
cd lxqt-novnc && bash start.sh
```
This project can made into other distros like kde, dde, mate, and other distros that made ibunti flavours
