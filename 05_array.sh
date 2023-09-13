#!/bin/bash

# we can create arrays just like other langs
<<arr

array values need to be <space> separated (insted of , separated)
and array elements will be inside ()

in case of string: if its a single word we dont need to provide " "

just like other langs we will use indexing to retrive array values

arr

my_array=( 54 65 85 avichii "this is a string" )

# array variable must be written in {}

echo "the 3rd index of the array is ${my_array[3]}"

#we can print all the elements of an array susing * char

echo "entire array elements ${my_array[*]}"

#we can print length of the array by using the wild char and # at the start of the variable

echo "the length is ${#my_array[*]}"

# we can also do array slicing

<<com

:3 specifies in which index to start slicing from.
:2 specifies how many elements the slicing continue (including the starting element)

thus 2 includes the starting element avichii & next element "this is a string"

com
echo "the third and fourth elements of the array are ${my_array[*]:3:2}"

<<com

we can also extend the array using +=

com

my_array+=( next 25 58 45 )

echo "extended array ${my_array[*]}"
