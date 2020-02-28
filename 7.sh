#!/bin/bash

p=`grep "$1" "$2"`
if [ $p ]
then
	echo "String found!"
else
	echo "String not found!"
fi
