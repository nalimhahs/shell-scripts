#!/bin/bash

p=`ls | grep "$1"`
if [ $p ]
then
	echo "File found!"
else 
	echo "File not found!" 
fi
