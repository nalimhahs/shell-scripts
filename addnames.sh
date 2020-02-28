#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Invalid number of arguments! 2 reqired, recieved $#."
	exit
fi

if [ ! -f "$1" ]
then
	echo "The file ($1) does not exist!"
	exit
fi

res=`grep "$2" "$1"`

if [ $res ]
then 
	echo "Username Exists!"
else
	echo $2>>$1
fi
