#!/bin/bash
read -p "enter the value of a " a
read -p "enter the value of b " b
read -p "enter the value of c " c
#echo "value of a="$a 
#echo "value of b="$b
#echo "value of c="$c

declare -A result
result[0]=$(($a+$b*$c))
result[1]=$(($a*$b+$c))
result[2]=$(($c+$a/$b))
result[3]=$(($a%$b+$c))


echo "Dictonary values: "${result[@]} 

declare -a array
i=0
while (( i<=3 ))
do
	array[$i]=${result[$i]}
	((i++))
done
echo "Array values: "${array[@]}



for (( i=o; i<=3; i++ ))
do
	for (( j=i+1; j<=3; j++ ))
	do
		if [ ${array[$i]} -lt ${array[$j]} ]
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "descending order of array : " ${array[@]}
