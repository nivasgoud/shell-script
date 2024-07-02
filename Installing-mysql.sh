#!/bin/bash

ID = $(id -u)

if [ $ID -ne 0 ]
then
   echo " Run the script with sudo access"
   exit 1
else
   echo "You have write priveleges to execute the script"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
   echo "Failed in mysql installation"
   exit 1
else
   echo "Successfully installed mysql"
fi

yum install git -y

if [ $? -ne 0 ]
then
   echo "Failed in git installation"
   exit 1
else
   echo "Successfully installed git"
fi
