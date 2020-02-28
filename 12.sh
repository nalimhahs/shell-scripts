#!/bin/bash

read -p "Enter name: " name

for (( i=${#name}; i>=0; i-- ))
do 
	echo -n "${name:$i:1}"
done

echo
echo "Length is ${#name}"
