#!/bin/bash
read -p "enter the value of a " a
read -p "enter the value of b " b
read -p "enter the value of c " c
#echo "value of a="$a 
#echo "value of b="$b
#echo "value of c="$c
temp=$(( $a+$b*$c ))
echo "a+b*c="$temp
