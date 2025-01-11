echo "cloning gitxpresso/linux-novnc in home directory in order https certificate work properly for the websockify server"
cd ~/
git clone https://github.com/gitxpresso/linux-novnc
echo "Updating Your System"
sudo apt update
echo "installing lxqt novnc xfvb openbix websockify dialog tigervnc-viewer tigervnc-standalone-server"
sudo apt install lxqt x11vnc xvfb openbox websockify novnc dialog tigervnc-standalone-server tigervnc-viewer -y
echo "starting the server"
vncserver -SecurityTypes none  --I-KNOW-THIS-IS-INSECURE  -localhost no :0
websockify -D --web=/usr/share/novnc/ --cert=/home/linux-novnc/novnc.pem 6080 localhost:5900
ssh -L 5900:localhost:5900 192.168.86.5 "x11vnc -create -env FD_PROG=/usr/bin/startlxqt -nopw -listen 127.0.0.1 -forever"
echo "Vnc Server Started"
