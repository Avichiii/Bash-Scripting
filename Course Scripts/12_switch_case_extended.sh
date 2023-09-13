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


<<com

it is cheking if input variables content is matching case's variable or not.

if input = a, then case variable a will execute.
	
	here a will execute date command.

we need to use the same formating (ex, using ) after case variable , ending with ;; )

we can write multiple line aswell

com

case $input in
        a)
		echo "Today's date is: "
		date
		echo "Ending...."
		;;
	b)
		echo "Listing contents..."
		ls
		;;
	c)
		echo "Current path is $(pwd)"
		;;

	# * if for wild and when nothing met the case
	*)echo "invalide option!!!"
esac


