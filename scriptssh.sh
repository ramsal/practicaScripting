#!/bin/bash

echo -n "Introduce IP:"
read ip

echo -n "Introduce Usuario:"
read user

echo -n "Introduce Password:"
read pass

echo -n "Introduce puerto:"
read puerto


sudo apt-get install sshpass

sshpass -p $pass ssh $user@ip -p $puerto
