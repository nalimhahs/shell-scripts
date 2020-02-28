#!/bin/bash

read -p "Enter n: " n
sum=0
for (( i=0; i<=n; i++ ))
do 
	sum=`expr $sum + $i`
done

echo "Sum is: $sum"
