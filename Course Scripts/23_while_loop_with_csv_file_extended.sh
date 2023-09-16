#!/bin/bash

<<com

we can use IFS to read csv files

com

#if both script and file is in the same folder, we can use relative path
FILE="test.csv"

<<com
we can exclude the first line by using awk command.

first we are reading all the contents of file,
piping it to the awk command,
awk will match using condition NR!=1 {print} (dont print the first row),
then piping the remaining to the while loop,
while will read each line and print it to the output (like for loop 16.),

here we are not using \$(cat \$FILE) or \$(awk  "NR!=1 {print}"), like we did in for loop 16.
because we are not storing the value in any where like we did in 16th script

	for name in \$(cat \$FILE)

com

# we are storing each column value in a separate variable.
cat $FILE | awk "NR!=1 {print}" | while IFS="," read id name age
do
	echo "id: $id"
	echo "name: $name"
	echo "age: $age" 
done


