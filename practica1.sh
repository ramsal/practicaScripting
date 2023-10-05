#!/bin/bash
echo "Introduce el nombre de usuario"
read usuario
echo "Introduce la contraseña"
read password
echo "Introduce un puerto"
read puerto
echo "Introduce la IP"
read ip
sshpass -p $password ssh -p $puerto "$usuario@$ip"
