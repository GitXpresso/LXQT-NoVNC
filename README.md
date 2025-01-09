
## Running Novnc LXQT using Tasksel
*Using tasksel to run lxqt in a browser since the other way wasnt working* 
look at the commit history of the readme.md to see the other way to run lxqt in the browser
```
sudo apt install tasksel novnc python3-websockify python3-numpy openssl dialog whiptail -y
```
### next run tasksel 
```bash
sudo tasksel
```
### get a apt-get error with tasksel do this
```bash
sudo dpkg --configure -a
```
install tigervnc packages
``` 
sudo apt install tigervnc-standalone-server tigervncviewer -y 
```
### next setup novnc configuration using openssl
```bash
openssl req -x509 -nodes -newkey rsa:3072 -keyout novnc.pem -out novnc.pem -days 3650
```

### then run the novnc server, the display is :1
```bash
websockify -D --web=/usr/share/novnc/ --cert=/home/ubuntu/novnc.pem 6080 localhost:5901
```
go to `https://localhost:5901` novnc

# Running Lxqt using X11VNC
### Updating your system
```bash
sudo apt update
```
### installing X11vnc
```bash
sudo apt-get install x11vnc 
```
### creating passwd using x11vnc
```bash
x11vnc -storepasswd 
```
### start the x11vnc server
```bash
x11vnc -usepw -display :1 
```
This project was unarchived because tasksel works with the lxqt-panel works and other system settings for lxqt to work properly.
the other way to run latest version of lxqt in the browser wasnt working.
***if you dont have systemctl and other things that require dbus to work properly then it wont also work in lxqt novnc either.***

gnome will not work if systemctl dbus is not working
