#!/bin/bash

echo -n "Pon la ip "
read ip

echo -n "Pon el puerto "
read port

echo -n "Pon el usuario "
read user

echo -n "Pon la password "
read pass

sshpass -p $pass ssh $user@$ip -p $port
