#!/bin/bash 

echo -n "User:"
read user
echo -n "Password:"
read password
echo -n "IP:"
read ip
echo -n "Port:"
read port

sshpass -p $password ssh $user@$ip -p $port
