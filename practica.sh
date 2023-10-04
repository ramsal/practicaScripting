#!/bin/bash
#Desarrolla un script para hacer conexiuones SSH, que permita recibir inputs de IP,
#Puerto, Usuario y Contraseña
#El Script debería advertir en caso de que la conexión sea errónea

sudo apt-get install sshpass

echo "Introduce la IP:"
read ip
echo "Introduce el puerto:"
read port
echo "Introduce el usuario:"
read user
echo "Introduce la contraseña:"
read passwd

sshpass -p "$passwd" ssh $user@$ip -p $port

if [ $? -eq 0 ]
then
  echo "Conexión SSH exitosa."
else
  echo "La conexión ha fallado"
fi
