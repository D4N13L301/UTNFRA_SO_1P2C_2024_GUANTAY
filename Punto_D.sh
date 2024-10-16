mkdir -p ~/Estructura_Asimetrica/correo
mkdir -p ~/Estructura_Asimetrica/cliente

touch ~/Estructura_Asimetrica/correo/cartas_{1..100}
touch ~/Estructura_Asimetrica/cliente/cartas_{1..100}

touch ~/Estructura_Asimetrica/correo/carteros_{1..10}

tree ~/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
