#!/bin/bash
if [ "$EUID" -ne 0 ] 
	then echo "Please run as root" 
	exit
fi 
HOST_DIRECTORY=$(pwd)
sudo systemctl start docker 
docker run --rm -it -v $HOST_DIRECTORY/cs225:/cs225 225-container
