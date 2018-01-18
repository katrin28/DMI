#!/bin/bash
a=$1
b=$2
c=$3
# ja a ir <par b (un < c) un b < c
if (( $a < $b && $b <$c ))
then
  echo "GATAVS(1.): $a $b $c"
fi

# ja c ir <par b (un < a) un b < a
if (( $c < $b && $b < $a ))
then
 echo "GATAVS(2.): $a $c $b"
fi

# ja  ir b<par a (un < c) un a < c
if (( $b < $a && $a < $c ))
then
echo "GATAVS(3.) $b $a $c"
fi

# ja  ir b < par c (un < a) un c < a
if (( $b < $c && $c < $a ))
then
echo "GATAVS(4.)$b $c $a"
fi

# ja  ir c < par a (un < b) un a < b
if (( $c < $a && $a < $b ))
then
echo "GATAVS(5.)$c $a $b"
fi

# ja  ir a < par c (un < b) un c < b
if (( $a < $c && $c < $b ))
then
echo "GATAVS(6.)$a $c $b"
fi

#!/bin/bash

#sakartosana

num=("$@")

n=$#

#min & max

sortednum=($(printf "%s\n" "${num[@]}" | sort -n))

echo ${sortednum[@]}

echo "MIN:" ${sortednum[0]}

echo "MAX:" ${sortednum[n-1]}

#videja vertiba

sum=0

for((i=0;i<n;i++))

do

sum=`expr $sum + ${num[$i]}`

done

vidver=$sum/$n

echo -n "Videja vertiba: "

echo $vidver|bc

#Mediana

if (( n%2 != 0 ))

then

echo -n "Mediana:"

echo "${sortednum[($n-1)/2]}" | bc

else

echo -n "Mediana:"

echo "scale=1;(${sortednum[$n/2]} + ${sortednum[$n/2-1]})/2" |bc

fi


