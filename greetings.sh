#!/bin/bash

NAME=""
WISHES=""


USAGE(){

    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo "-n, Specify the name (mandatory)"
    echo "-w, Specify the wishes"
    echo "-h, Display help and exit"
}

while getopts ":n:w:h" opt
do
  case $opt in
      
      n) NAME="$OPTARG";;
      w) WISHES="$OPTARG";;
      \?) echo "invalid options: - "$OPTARG" " >&2; USAGE; exit;;
      :) USAGE; exit;;
      h) USAGE; exit;;
      
  esac
done

if [ -z $NAME ] || [ -z $WISHES ]

then

    echo "Both -n and -w are mandatory options"
    
    USAGE

    exit 1

fi


echo "Hello $NAME.  $WISHES  I have been learning Shell Script."