DIRECTORIO="RTA_ARCHIVOS_Examen_20241016"

ARCHIVO="$DIRECTORIO/Filtro_Basico.txt"

mkdir -p "$DIRECTORIO"

echo "Total de memoria RAM:" > "$ARCHIVO"
grep "MemTotal" /proc/meminfo >> "$ARCHIVO"

echo -e "\nInformación del fabricante del chasis:" >> "$ARCHIVO"
dmidecode -t chassis | grep "Manufacturer" >> "$ARCHIVO"

echo "La información se ha guardado en $ARCHIVO."
