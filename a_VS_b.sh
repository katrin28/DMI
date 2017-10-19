#!/bin/bash
echo "Cienijamais lietotajs, ludzu, ievadi pirmo skaitli: "
read a
echo "Cienijamais lietotajs, ludzu, ievadi otro skaitli: "
read b

c=`expr $a + $b`
echo "$a + $b ="$c

