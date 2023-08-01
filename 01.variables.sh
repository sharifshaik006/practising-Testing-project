#!/bin/bash

#learning about variables in scripting
#variable and inside the variable content as output DATE=Linux command 
# arguments can be passed on and positioned through $1 $2 arguments
# Encrypted information can be done by using read commands in the username and passwords in script


NAME=SHAIK
SURNAME=KING

echo "this is ${NAME}"
echo "THIS is ${kING}

DATE=$(date +%F)

echo ${DATE}

NAME=$1
SURNAME=$2

echo "what is the name ${NAME} and ${SURNAME}


echo "what is username"

read -s USERNAME

echo "what is Password"

read -s PASSWORD



