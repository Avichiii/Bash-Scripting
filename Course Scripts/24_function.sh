#!/bin/bash

<<com

we can create function in two ways.

#1
function my_func {}

#2
my_func() {}

com

#1
function my_func {
	echo "--------------------------------------"
	echo "welcome to the machine named $(hostname)"
	echo "--------------------------------------"
}

#function call
my_func

#2
func() {
 	echo "Hi"
}
#function call
func
