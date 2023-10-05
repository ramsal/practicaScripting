#!/bin/bash
echo -n "Introduzca su ip: "
read ip
echo -n "Introduzca su usuario: "
read usu
echo -n "Introduzca su contraseña: "
read pass
echo -n "Introduzca puerto de conexion: "
read port
# Establecer la conexión SSH y ejecutar el script remoto
protocolo= sshpass -p $pass ssh -p $port $usu@$ip 2>&1
#$protocolo

if [ var=$($protocolo | grep "Permission denied") ]
        then
echo "penco"
else
echo "establecida"
fi

