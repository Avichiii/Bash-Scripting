#!/bin/bash


#just like c programming lang we can use switch cases

<<com

we only use case keyword

com

echo "What operation do you want to perform!"
echo "a = prints current date"
echo "b = lists the content of the direcotry"
echo "c = prints path to current working directory"

echo ""
read -p "----> " input

case $input in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "invalide option!!!"
esac


