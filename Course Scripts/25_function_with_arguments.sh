#!/bin/bash

<<com

\$1 describes the first argument
\$2 describes the second argument

com


addition() {
	num1=$1
	num2=$2
	let sum=$num1+$num2
	echo "the sum of the addition is $sum"
}

<<com

20 & 30 will take place in \$1 & \$2

com

#providing arguments to the funcion
addition 20 30
