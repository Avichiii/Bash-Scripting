#!/bin/bash

<<com

we can also declare an array where elements will be stored as a key value pair.
this some what like dictonary but within an array.

com

# first we need to declare that our array variable will store key-value pair

declare -A dict_array

dict_array=( [name]=avichii [occupation]=pentesting )

# this is more readable then normal indexing

echo "name: ${dict_array[name]} & occupation: ${dict_array[occupation]}"

