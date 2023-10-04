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

#Realizo el ssh
ssh  $user@$ip -p $puerto
