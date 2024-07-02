#!/bin/bash

Validate(){
    if [ $1 -ne 0 ]
    then
       echo " Failed in $2"
    else
       echo " Success in $2"
    fi
}

ID=$(id -u)

if [ $ID -ne 0]
then
   echo " Run the script with root access"
   exit 1
else
   echo "You have root access"
fi

yum install mysql -y

Validate $? "Installing Mysql"

yum install git -y

Validate $? "Installing git"