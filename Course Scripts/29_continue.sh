#!/bin/bash

#continue is used for breaking the current iteration and moving to the next iteration


for i in {1..10}
do	
	let mod=$i%2
	if [[ mod -eq 0 ]]
	then
		continue
	fi
	echo "current number $i"
done



