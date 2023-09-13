#!/bin/bash

# we can perform arithmatic operation using let keyword

<<com

let <variablename>

com

a=10
b=20


# dont leave spaces between +
let sum=$a+$b

echo "sum of a+b= $sum"

# we can also do this using (())

echo "multiplication of a*b is $(($a*$b))"

#increment variable value
echo "a: $a"

<<com

let specifies that we are going to do some arithmatic operation 
with the variable

com

let a++
echo "a: $a"
