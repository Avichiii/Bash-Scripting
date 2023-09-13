#!/bin/bash


<<com

ternary means three 

expression && condition1 || condition2

if the expression is true, condition1 will be executed or else condition2 will be executed

com

#we can use [[]] with out if keyword
read -p "age: " age

[[ $age -ge 18 ]] && echo "adult" || echo "minor"

