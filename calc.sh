#!/bin/bash

echo "Menu!"
echo "1) Add."
echo "2) Subtract"
echo "3) Multiply"
echo "4) Divide"
echo "5) Modulus"
echo "6) Sine"
echo "7) Cosine"
echo "8) Tan"
echo "9) Log"
echo "10) Exponent"

read -p "Enter choice: " ch

case $ch in

    1) 
        read -p "Enter a: " a
        read -p "Enter b: " b
        res=`expr $a + $b`
        echo "Result: $res";;
    2) 
        read -p "Enter a: " a
        read -p "Enter b: " b
        res=`expr $a - $b`
        echo "Result: $res";;
    3) 
        read -p "Enter a: " a
        read -p "Enter b: " b
        res=`expr $a \* $b`
        echo "Result: $res";;
    4) 
        read -p "Enter a: " a
        read -p "Enter b: " b
        res=`expr $a \/ $b`
        echo "Result: $res";;
    5) 
        read -p "Enter a: " a
        read -p "Enter b: " b
        res=`expr $a \% $b`
        echo "Result: $res";;
    6) 
        read -p "Enter a: " a
        res=`bc -l <<< "s($a)"`
        echo "Result: $res";;
    7) 
        read -p "Enter a: " a
        res=`bc -l <<< "c($a)"`
        echo "Result: $res";;
    8) 
        read -p "Enter a: " a
        res=`bc -l <<< "t($a)"`
        echo "Result: $res";;
    9) 
        read -p "Enter a: " a
        res=`bc -l <<< "l($a)"`
        echo "Result: $res";;
    10) 
        read -p "Enter a: " a
        res=`bc -l <<< "e($a)"`
        echo "Result: $res";;
    *)
        echo "Invalid Operation!";;

esac