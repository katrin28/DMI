#!/bin/bash
echo "Input a: "
read a
echo "Input b: "
read b

if[$a -eq $b ]
then
echo "a ($a) ir vienads ar b ($b)"
fi




: <<'END'
c=`expr $a + $b`
echo "$a + $b ="$c
END
