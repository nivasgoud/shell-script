#!/bin/bash

set -e

ls -ltr

touch example.txt

echo "Before wrong command"

lsffff

echo "after wrong command"

cd tmp

cd home/centos