#!/bin/bash

<<com

we can use shifting.
sometimes we can use both $1 and $@,where using shifting we can identify few arguments &
shift other arguemts together.

com


<<com

if the commandline arguments are  script.sh sam he is sa default user
\$1 = sam & \$@ will take all the other arguemts excluding sam (because that is taken by the \$1)

if we didnt do this we have to mention the discription in ""; which the user can be unaware of.

com


echo "user creation script"
echo "enter name: $1"

shift
echo "enter discription: $@"
