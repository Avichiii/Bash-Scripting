#!/bin/bash
<<com

IFS stands for internal field separator. it separates fields based on characters ( just like split ).

here we are reading names from a file based on `newline`

ex. 
	rick adams
	norman osbond

these names will print out to the termainal separatly line by line.

this script is alternative way of writing the script in 16th file.

com

while IFS="$\n" read name
do
	echo "$name"
done < name.txt
