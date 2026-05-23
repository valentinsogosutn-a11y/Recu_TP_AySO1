#!/bin/bash
sudo chown p1c1_2026_u1:p1c1_2026_g1 /datos/ -R
sudo chmod 750 /datos/ -R
sudo su -c "whoami > /datos/validar1.txt" p1c1_2026_u1
FIN 
