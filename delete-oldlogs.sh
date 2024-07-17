#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGPATH=/tmp/logs

if [ ! -d $LOGPATH ]
then
    echo -e "Log File location $LOGPATH doesn't exists" 
fi

OLD_LOGS=$( find $LOGPATH -type f -mtime +14 -name "*.txt" )

echo $OLD_LOGS

while IFS = read -r line

do

  echo "Deleting file: $line "
  
  rm -rf $line

done <<< $OLD_LOGS