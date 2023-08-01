#!/bin/bash

#data types in scripting are mostly strings
#another data types are array which list of elements
# The elements start from index position 0 and 1 and 2 ........
# to print out everythin in the arrays will use @
# Boolean 0 is a failure and 1 is success truth

NUMBER1=200
NUMBER2=399
RESULT=$((NUMBER1+NUMBER2))

echo "adding is ${RESULT}"




FRUITS=("Apple" "Bananna" "cat")

echo "the name of the element is ${FRUITS[2]}"

