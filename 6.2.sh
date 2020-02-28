#!/bin/bash

p=`ls | grep "$1"`
if [ $# -ne 2 ]
then
	echo "Invalid args"
	exit 0
fi

if [ $p ]
then
	echo "File found!"
	mv "$1" "$2"
	echo "Renamed to $2!"
else 
	echo "File not found!" 
fi
