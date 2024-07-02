#!/bin/bash

ID=$(id -u)
TimeStamp=$(date +%F#%H::%M::%S)
LogFile=/tmp/$0-$TimeStamp.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

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
   echo -e "$Y You have root access you can proceed for it $N"
fi

for i in $@
do
  yum list installed $i &>> $LogFile
  if [ $? -ne 0 ]
  then
      yum install $i -y &>> $LogFile
      Validate $? "Installing $i"
      exit 1
  else
      echo -e " $i package is already installed...$Y SKIPPING $N"
  fi
done