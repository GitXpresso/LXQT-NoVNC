LXQT in the browser using [NoVNC](https://github.com/novnc/NoVNC/)

# Tutorial
On how to run LXQT in a browser
First update your linux system
```
sudo apt update
```
next install the window manager for lxqt
```
sudo apt install fluxbox openbox awesome i3 icewm -y
```
Next install LXQT
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
Setup certificate in order novnc to work with https
```

