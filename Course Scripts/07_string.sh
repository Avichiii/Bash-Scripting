#!/bin/bash

#we can perform string operation just like other langs

str="this is a string that needs to be modified!"

# length of the string

echo "len of the string is ${#str}"

#to convert all the letters of the string to uppercase

echo "uppercase ------- ${str^^}"

#to convert all the letters of the string to lowercase

echo "lowercase ------- ${str,,}"

# string slicing

<<com

similer to array slicing

com

echo "only string will be printed:  ${str:10:6}"

<<com

we can replace certain word of a string with another word

------> variable / "word within variable that needs to be replaced" / "word that will replace with".

com

modstr=${str/string/str_}

echo "modified string: $modstr"
