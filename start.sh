#!/bin/bash
IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
echo "Connect with https://$IP:8443/vnc.html?host=$IP&port=8443"
vncserver :1
~/noVNC/utils/novnc_proxy --vnc localhost:5901 --listen 8443
vncserver -kill :1
