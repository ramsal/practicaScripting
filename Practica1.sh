Practica 1 PSP

#!/bin/bash

echo -n "User:"
read user
echo -n "IP:"
read ip
echo -n "port:"
read port
echo -n "Password:"
read pass

sshpass -p '$pass' ssh $user@$ip -p $port

#Con lo anterior, respondemos a la primera parte del ejercicio

#Para contestar a la segunda parte, podríamos hacerlo de diversas maneras
#Yo voy a plantear dos
#Primera

#Se comprobará si la conexión a SSH ha tenido exito utilizando '$?', que lo que hace es devolver si el comando que se ejecuta justo antes lo hace con éxito o no. Devolverá un 0 si lo hace exitosamente y dará otro valor si no lo logra. 

if [ $? -eq 0 ]
then
    echo "Conexion establecida con éxito"
else
    echo "No se ha podido establecer la conexión"
fi

#La segunda forma es directamente comprobar que tipo de fallo obtenemos y compobrarlo usando un condicional
#En este caso se evaluará si la conexion ha sido rechazada

#Realizaremos la conexion ssh dentro del if

if sshpass -p '$pass' ssh $user@$ip -p $port 2>&1 | grep -q "Connection refused"
then 
    echo "Error detectado: Conexion rechazada"
else
    echo "Conexion establecida con éxito"
fi

#2>&1 nos captura el error y se envían a los archivos por defecto sdout (1) y stderr (2). Ambos archivos están conectados con la pantalla
#-q (quiet) es un comando que lo que hace es evitar que se nos muestre lo que devuelve el ssh, mostrando directamente el mensaje que hay en el condicional.
