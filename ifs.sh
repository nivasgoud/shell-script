#!/bin/bash

ID=$(id -u)

file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ]
then
   echo -e "File $file doesn't exist"
   exit 1
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
   echo "username:$username"
   echo "userid: $user_id"
   echo "groupid: $group_id"
   echo "User FullName: $user_fullname"
done < $file