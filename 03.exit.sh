# Exit codes......

#!/bin/bash

# When we have a 10 lines of code and we face with error the shell script doesnt care about error
# its our responsibulity to check its in right or not 
# here exit codes comes into handy to make use more efficient script
# script understands it as by exit codes. it will be echo $?......> 0 it will be success for sript unless 0 will be failure 

# linux always consider the last line if last line is sucess then the whole script linux will think it as success

# check the exit code at each script line

# it will be through conditions which are if conditions.

# if { 
#    (expression) these commands when expression is true. 
 #   }
# else {
#   these commands if expression is false
# }

# if (exit code is 0) {
# then print as success
# }
# else {
# then print failure
# }
# first find out the alogarithm of the flow any script to give the conditions 
#  Alogarithmm..................................
# TASK.... Installing packages .....
# 1. we need root acess for installing any packages 2. if he got access procced 3. if not tell to get the root access
# can find by using id in terminal for root id will be 0 and for normal user it will be 1000
# if user has a root access then it will be followed or else to be exit with any code apart from 0 

USERID=$(id -u)
if [ $USERID -eq 0 ]
then 
 echo "the user got the root access"
else 
 echo " please have a root access to procced further"
 exit 1
fi
echo "installing Git"
apt install git -y

if [ $? -eq 0 ]
then 
 echo "then install git successfully"
else 
 echo "Git installation unsuccessful"
 exit 1
fi



