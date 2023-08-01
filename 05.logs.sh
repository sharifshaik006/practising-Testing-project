#!/bin/bash

# to check the executions TO UNDERSTAND AND TROUBLE SHOOOT ANY APPLICATIONS AND PROJECTS

# LOGS WILL BE GET BY OUTPUT REDIRECTIONS............................
# ls -l
# 1 means........ SUCCESS OUTPUT
# 2 MEANS .........FAILURE OUTPUT
# $ MEANS......... BOTH SUCEES AND FAILURE 
# >  MEANS ....... REDIRECTIONS { when you redirect by default it takes the success output}
# >> MEANS........ APPENDING ( meaning tracking and adding)
# $> this one is deleting the old content and giving the new content 
# when you add appending it will give everything &>> ( both )

# we are creating a log file each time when it is executing the script to track 

USERID=$(id -u)
DATE=$(date +"%F %H:%M:%S")
LOG_FILE=$DATE

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
 echo " $2 then ....FAILED " &>>$LOG_FILE
 exit1
else 
 echo  " $2 THEN .......SUCCESS " &>>$LOG_FILE
fi
}

apt install git -y &>>$LOG_FILE

VALIDATE $? "GIT Installation"

apt install wget -y &>>$LOG_FILE
VALIDATE $? "WGET Installation"

apt install vim -y &>>$LOG_FILE
VALIDATE $? "vim Installation"

apt install net-tools -y &>>$LOG_FILE
VALIDATE $? "NET-TOOLS Installation"
