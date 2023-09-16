#!/bin/bash

<<com

we can use IFS to read csv files

com

#if both script and file is in the same folder, we can use relative path
FILE="test.csv"

# we are storing each column value in a separate variable.
while IFS="," read id name age
do
	echo "id: $id"
	echo "name: $name"
	echo "age: $age"
# will run until whole file isnt read. 
done < $FILE
