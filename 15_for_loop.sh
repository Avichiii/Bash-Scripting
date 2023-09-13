#!/bin/sh

<<com

we can write for loop in many ways

com

#1
for name in avichii hellsender root null
do
	echo "name is $name"
done

#2
for number in 1 2 3 4 5 6 7 8 9 10
do 
	echo "number is $number"
done

#3
for sequence in {1..10}
do 
	echo "sequence is $sequence"
done

#4
for num in `seq 1 10`
do
	echo "num is $num"
done

<<com

we will talk about another way in another file no-16

com
