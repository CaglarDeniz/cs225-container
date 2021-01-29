#!/bin/bash 

if [ "$EUID" -ne 0 ] 
	then echo "Please run as root" 
	exit
fi 
if [ "$(docker -v)" -ne 0 ] 
	then echo "Please verify your docke installation" 
	exit 
fi 

sudo systemctl start docker  

docker volume create 225-vol 

docker build -t 225-container . 

