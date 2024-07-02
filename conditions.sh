#!/bin/bash

echo "==Conditions Concept=="

Number=$1

echo "print $Number"

if [ $Number -gt 100 ]
then
   echo "given number $Number is greate than 100"
else
   echo "given number $Number is less than 100"
fi


