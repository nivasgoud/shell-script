#!/bin/bash
ID=$(id -u)
TimeStamp=$(date +%F#%H::%M::%S)
LogFile="/tmp/Shell-$0-$TimeStamp.log"

echo " Script started executing at $TimeStamp" &>> $LogFile

Validate(){
    if [ $1 -ne 0 ]
    then
       echo " Failed in $2 "
       exit 1
    else
       echo "Success in $2"
    fi
}

if [ $ID -ne 0 ]
then
   echo "Run the script with root access"
   exit 1
else
   echo "You have root privelages"
fi

yum install mysql -y &>> $LogFile

Validate $? "Installing MySQL"

yum install git -y &>> $LogFile

Validate $? "Installing Git"