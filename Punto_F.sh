mkdir ~/Punto_F
echo "Mi ip publica es: $(curl -s ifconfig.me)" > ~/Punto_F/Filtro_Avanzado.txt
echo "CPU Modelo: $(grep -m1 'model name' /proc/cpuinfo | awk -F': ' '{print $2}' | awk '{print $1, $2}') Frecuencia: $(grep -m1 'cpu MHz' /proc/cpuinfo | awk '{print $4}')GHz" >> ~/Punto_F/Filtro_Avanzado.txt
