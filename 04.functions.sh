#!/bin/bash

# DRY.................> Dont Repeat yourself
# functions in scripting is a unit of work
# can create a function use whereever possible. if you change in one place it will reflect everywhere. 
# functions do as same as variables. functions perform more as compare to variables
# TASK TO INSTALL MANY PACKAGES 
# FUNCTION_NAME () {

# }
# THIS IS HOW U CALL THE FUNCTION BY FUNCTION_NAME
# WHEN YOU ARE PASSING THE ARGUMENTS TO THE FUNCTION. HOW YOU CAN RECIEVE IT BY $1

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
  echo "please run with root access"
  exit 1
fi


# here validate function is going to check the exit code how do we know exit code. we have to call the other one
#THIS IS A GENERIC FUNCTION SO IT SHOULD BE GENERIC WE NEED TO PASS ARGUMENTS IN THE FUNCTION. so we ARE PASSING ARGUMENTS IN THE FUNCTION

VALIDATE(){
if [ $1 -ne 0 ]
then 
 echo " $2 then ....FAILED "
 exit 1
else 
 echo  " $2 THEN .......SUCCESS "
fi
}

apt install git -y

VALIDATE $? "GIT Installation"

apt install wget -y
VALIDATE $? "WGET Installation"

apt install vim -y
VALIDATE $? "vim Installation"

apt install net-tools -y
VALIDATE $? "NET-TOOLS Installation"
