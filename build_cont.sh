#!/bin/bash 

if [ "$EUID" -ne 0 ] 
	then echo "Please run as root" 
	exit
fi 
#if [ "$(docker -v)" -ne 0 ] 
#	then echo "Please verify your docker installation" 
#	exit 
#fi 

sudo systemctl start docker  

docker build -t 225-container . 

