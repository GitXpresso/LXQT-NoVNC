sudo mkdir ~/.vnc
sudo touch ~/.vnc/xstartup
cat <<EOF > ~/.vnc/xstartup
> #!/bin/bash
> startlxqt &
> EOF
