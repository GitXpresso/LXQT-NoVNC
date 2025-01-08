Using tasksel to use lxqt since the other way wasnt working
## Running Novnc LXQT
```
sudo apt install tasksel novnc python3-websockify python3-numpy openssl -y
```
### next setup novnc configuration using openssl
```
openssl req -x509 -nodes -newkey rsa:3072 -keyout novnc.pem -out novnc.pem -days 3650
```

### then run the novnc server, the display is :1
```
websockify -D --web=/usr/share/novnc/ --cert=/home/ubuntu/novnc.pem 6080 localhost:5901
```
go to `https://localhost:5901` 
