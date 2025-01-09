echo "Updating Your System"
sudo apt update
echo "installing lxqt novnc xfvb openbix websockify dialog tigervnc-viewer tigervnc-standalone-server"
sudo apt install lxqt x11vnc xvfb openbox websockify novnc dialog tigervnc-standalone-server tigervnc-viewer -y
echo "starting the server"
ssh -L 5908:localhost:5908 192.168.86.5 "x11vnc -create -env FD_PROG=/usr/bin/mate-session -nopw -listen 127.0.0.1 -forever"
vncserver -SecurityTypes none  --I-KNOW-THIS-IS-INSECURE  -localhost no :8
websockify -D --web=/usr/share/novnc/ --cert=/home/ubuntu/novnc.pem 6887 localhost:5908
echo "Vnc Server Started"