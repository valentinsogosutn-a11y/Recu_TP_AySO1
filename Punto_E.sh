mkdir ~/Punto_E
free -h | grep Mem | awk '{print $2}' > ~/Punto_E/Filtro_basico.txt
grep -m1 'model name' /proc/cpuinfo | awk -F': ' '{print $2}' >> ~/Punto_E/Filtro_basico.txt
