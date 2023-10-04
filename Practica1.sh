#!/bin/bash

echo -n "Hola, introduzca su ip:"
read ip

echo -n "Es el puerto por defecto?:"
read res
if [[ $res == 1 ]]
then
puerto=22
else
echo -n "Introduce el puerto al que quieres conecarte"
read puerto
fi

echo -n "Hola, introduzca su usuario:"
read usuario

echo -n "Hola, introduzca su contrasena:"
read contrasena

sshpass -p $contrasena ssh -p $puerto $usuario@$ip
