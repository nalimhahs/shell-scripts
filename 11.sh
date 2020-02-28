#!/bin/bash

p=`head -1 "$1"`
echo $p

for (( i=0; i<${#p}; i++ ))
do
	case ${p:$i:1} in 
	
		a) echo A >> $2 ;;
		e) echo E >> $2 ;;
		i) echo I >> $2 ;;
		o) echo O >> $2 ;;
		u) echo U >> $2 ;;
		*) echo ${p:$i:1} >> $2;;
	esac 
done 
