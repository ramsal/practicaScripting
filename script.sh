#!/bin/bash

#Pido el nombre de usuario
echo " Dime el nombre de usuario"
read user

#Pido la direccion ip
echo " Dime la direccion ip"
read ip

#Pido el puerto
echo " Dime el puerto"
read puerto

#Pido la contraseña
echo " Dime la password"
read password

#Realizo el ssh
sshpass -p $password ssh $user@$ip -p $puerto
