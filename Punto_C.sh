#!/bin/bash
sudo groupadd p1c1_2026_Todos
HASH_U1=$(sudo grep p1c1_2026_u1 /etc/shadow | awk -F ':' '{print $2}')
sudo useradd -m -s /bin/bash -g p1c1_2026_Todos -p "$HASH_U1" p1c1_2026_u2
sudo usermod -aG p1c1_2026_Todos p1c1_2026_u1
sudo chgrp -R p1c1_2026_Todos /datos/
sudo chmod -R g+w /datos/
sudo chmod o+r /datos/
sudo su -c "id >> /datos/validar1.txt" p1c1_2026_u2
