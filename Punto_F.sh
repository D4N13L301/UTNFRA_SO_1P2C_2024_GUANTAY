DIRECTORIO="RTA_ARCHIVOS_Examen_20241016"

ARCHIVO="$DIRECTORIO/Filtro_Avanzado.txt"

mkdir -p "$DIRECTORIO"

IP_PUBLICA=$(curl -s ifconfig.me)


cd /repogit/UTNFRA_SO_1P2C_2024_GUANTAY 
URL_REPOSITORIO=$(git remote get-url origin)

{
    echo "Mi IP Publica es: $IP_PUBLICA"
    echo "Mi usuario es: $(whoami)"
    echo "El Hash de mi Usuario es: $(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}')"
    echo "La URL de mi repositorio es: $URL_REPOSITORIO"
} > "$ARCHIVO"

cd
curl -s ifconfig.me
whoami
sudo grep $(whoami) /etc/shadow
echo "Mi IP Publica es: $(curl -s ifconfig.me)" > Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $(sudo grep $(whoami) /etc/shadow | cut -d: -f2)" >> Filtro_Avanzado.txt
cat Filtro_Avanzado.txt
