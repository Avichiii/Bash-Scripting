#!/bin/bash

<<com

we can define for loop like we do in other lang such as C

com

my_array=( rick nikolas tom adam alex ryon )
length=${#my_array[*]}

for (( i=0;i<$length;i++ ))
do
	echo "name: ${my_array[$i]}"
done

