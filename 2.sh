#!/bin/bash

read a
read b
sum=`expr $a + $b` 
echo $sum
sub=`expr $a - $b`
echo $sub
echo `expr $a \* $b`
echo `expr $a / $b`
