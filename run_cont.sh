#!/bin/bash
if [ "$EUID" -ne 0 ] 
	then echo "Please run as root" 
	exit
fi 
docker run --rm -it --mount source=225-vol,target=/225  225-container
