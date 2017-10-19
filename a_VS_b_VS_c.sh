#!/bin/bash
echo "Input a: "; read a
echo "Input b: "; read b

if (( $a == $b ))
then 
echo "a ($a) ir vienads ar b ($b)"
elif (( $a > $b ))
then
echo "a ($a) ir lielaks par b ($b)"
else
echo"a ($a) ir mazaks par b ($b)"
fi









:<<'END'
if [ $a -eq $b ]
then
echo "a ($a) ir vienads ar b ($b)"
fi

if [ $a -ne $b ]
then 
echo "a ($a) ir nevienads ar b ($b)"
fi

if (( $a > $b ))
then 
echo "a ($a) ir lielaks par b ($b)"
fi

if (( $a < $b ))
then 
echo "a ($a) ir mazaks par b ($b)"
fi

if [ $a -ge $b ]
then 
echo "a ($a) ir lielaks vai vienads ar b ($b)"
fi

if [ $a -le $b ]
then 
echo"a ($a) ir mazaks vai vienads ar b ($b)"
fi
END









: <<'END'
c=`expr $a + $b`
echo "$a + $b ="$c
END
