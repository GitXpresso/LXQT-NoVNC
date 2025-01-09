
## Running Novnc LXQT using Tasksel
*Using tasksel to run lxqt in a browser since the other way wasnt working* 
look at the commit history of the readme.md to see the other way to run lxqt in the browser
### Update the System
```bash
sudo apt update
```
### install require packages
```bash
sudo apt install tasksel novnc python3-websockify python3-numpy openssl dialog -y
```
### next run tasksel, to know how to move and select in dialog heres a [tutorial](#Using-Dialog-Tutorial)
```bash
sudo tasksel
```
### Selecting LXQT looks like this
![Screenshot 2025-01-09 11.42.45 AM.png](<https://media-hosting.imagekit.io//eea7051247d9434e/Screenshot%202025-01-09%2011.42.45%20AM.png?Expires=1831049017&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=UfYNkQG1H~dBfUE9W6D89Yi-LlpgBTkD2BF6Pr6l4iUXYyid3nByOt55CC1yCxbK0HpqcW69P9Sco1wFbdvRyRyQGtS8va0G9bfRSNXAgcqgU7BPws0-ukHDvUU9r5yYXCjpZaIOSlaR0fVmhGbBTdGCaUZlgYmdlvpm8W3A39dYvFdS5Y5MZE1JQlalOMM~FkdxHpHfPvx02aRD326BEmWWAm5mIk5diW8qaBuTHHD0QnCwfkCBSxN7Z70ppOBNJeNT9cZ4-FIe6YJsEB2Nd08IsK6QwSd9s3YXBN6~UHZbcrf4D7J8yHWjE3Rq5WPdpFien2QZFlW3UhDfgt513Q__>)
### if you have any errors with tasksel go this anchor link: [Tasksel Errors][#Tasksel-Errors]
### set the Default X-Session, Type 0 as the default
```bash
sudo update-alternatives --config x-session-manager
```
### install vnc server(tigervnc)
```bash
sudo apt install tigervnc-standalone-server tigervnc-viewer -y 
```
### next setup novnc configuration using openssl
```bash
cd ~/
git clone https://github.com/Novnc/Novnc
cd Novnc
openssl req -x509 -nodes -newkey rsa:3072 -keyout novnc.pem -out novnc.pem -days 3650
```
### create the xstartup file using cat here document
```bash
cat << EOF > ~/.vnc/xstartup
#!/bin/bash
startlxqt &
EOF
```
### start a new vnc session
```bash
sudo vncserver -localhost no :3
```
### run lxqt
```bash
xtigervncviewer vncserver:5901
```
### if command upove does not work then do the command below
```bash
tigervncserver -xstartup /usr/bin/startlxqt -geometry 800x600 -localhost no :1
```
### run novnc web client using websockify, the display is :1
```bash
websockify -D --web=/usr/share/novnc/ --cert=/home/ubuntu/novnc.pem 6080 localhost:5901
```
go to `https://localhost:5901` novnc

# Running Lxqt using X11VNC Headless
### Updating your system
```bash
sudo apt update
```
### install X11vnc Xvfb and Fluxbox
```bash
sudo apt install x11vnc xvfb fluxbox -y
```
### setup vnc server
```bash
ssh -L 5900:localhost:5900 192.168.86.5 "x11vnc -create -env FD_PROG=/usr/bin/fluxbox -env X11VNC_CREATE_GEOM=${1:-1024x768x16} -nopw -listen 127.0.0.1 -forever"
```
### want to have a password for x11vnc then replace `-nopw` with `-usepw`
### and create a password using the command below then setup vnc server
```bash
x11vnc -storepasswd 
```
### start the x11vnc headless server
```bash
x11vnc -usepw -display :1 
```
This project was unarchived because tasksel works with the lxqt-panel works and other system settings for lxqt to work properly.
the other way to run latest version of lxqt in the browser wasnt working.
***if you dont have systemctl and other things that require dbus to work properly then it wont also work in lxqt novnc either.***

gnome will not work if systemctl dbus is not working
## start the novnc server
``` 
bash ~/Linux-NoVNC/launch.sh --vnc 192.168.1.10:5900
```
# Using Dialog Tutorial
To move in dialog, use the up and down arrow keys
To Select A Option in Dialog press space
After selecting 1 or more options in Dialog Press Enter
# Tasksel Errors
## Errors with tasksel and How to fix them
### Did you get this error while installing lxqt using tasksel
```bash
Use of uninitialized value $ret[0] in string eq at /usr/bin/debconf-apt-progress line 173 <STDIN> line 4.
tasksel: apt-get failed (255)
```
### Heres how to fix the error upove by putting the follow command below in your termial
```bash
sudo apt-get install lubuntu-desktop^
```
### Did you get this error, if you did then heres how to fix it
```bash
tasksel: apt-get failed (255) 
```
### To fix the error upove, type this in your terminal
```bash
sudo dpkg --configure -a
```
### Did you get a debconf error with tasksel that looks like this heres how to fix it
```bash
debconf: DbDriver "config": /var/cache debconf/config.dat is locked by another process: Resource temporarily unavailable
```
### first put this command below in your terminal
```bash
sudo fuser -v /var/cache/debconf/config.dat
```
### output example
                     USER        PID ACCESS COMMAND

/var/cache/debconf/config.dat:
                    root      5787 F.... dpkg-preconfigu
### kill the process showed when putting the command upove in your termial
```bash
sudo kill -9 5787
```
### Answer upove does not work then do this instead
```bash
sudo rm /var/cache/debconf/*.dat 
```
### If all the answers to fix the errors dont work then install lxqt and lubuntu desktop manually
```bash
sudo apt install -y lxqt lubuntu-desktop
```
### did you get this error when running `sudo update-alternatives --config x-session-manager`
```bash
There is only one alternative in link group x-session-manager (providing /usr/bin/x-session-manager): /usr/bin/startlxqt
Nothing to configure.
```
then just create a xstartup file from [line 32](#-create-the-xstartup-file-using-cat-here-document)