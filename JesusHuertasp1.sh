#!/bin/bash
echo "Dime tu usuario:"
read usu
echo "Dime tu contrasenia:"
read pas
echo "Dime tu ip:"
read ip
echo "Dime tu puerto:"
read port

sshpass -p $pas ssh -p $port $usu@$ip
