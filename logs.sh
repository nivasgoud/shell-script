#!/bin/bash
ID=$(id -u)
TimeStamp=$(date +%F#%H::%M::%S)
LogFile="/tmp/Shell-$0-$TimeStamp.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo " Script started executing at $TimeStamp" &>> $LogFile

Validate(){
    if [ $1 -ne 0 ]
    then
       echo -e "$R Failed in $2 $N"
       exit 1
    else
       echo -e "$G Success in $2 $N"
    fi
}

if [ $ID -ne 0 ]
then
   echo -e "$R Run the script with root access $N"
   exit 1
else
   echo -e "$Y You have root privelages $N"
fi

yum install mysql -y &>> $LogFile

Validate $? "Installing MySQL"

yum install git -y &>> $LogFile

Validate $? "Installing Git"