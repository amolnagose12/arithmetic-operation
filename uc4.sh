#!/bin/bash
read -p "enter the value of a " a
read -p "enter the value of b " b
read -p "enter the value of c " c




temp=$(( $c+$a/$b ))
echo "c+a/b = "$temp
