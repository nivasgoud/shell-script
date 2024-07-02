#!/bin/bash

echo "Next concept Data Types"

num1=$1
num2=$2

sum=$(($num1+$num2))

echo "Sum of the given two numbers are $sum"

echo "Number of arguments passed $@"

echo "Arguments passed are $#"

echo "Name of the script is $0"