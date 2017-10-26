#!/bin/bash

#if (...) then ...elif (...) ....else... fi
a=$1
if (( $a > 0 )); then
     echo "Izdr. no galv. zara (ja g.), tad, kad $a ir >0"
elif (( $a == 0)); then
 echo "Izdr. no alt. zara (ja g.), tad, kad $a ir =0"
else
 echo "Izdr. no galv. zara (ne g.), tad, kad $a nav >0"
 echo "Nostrada tad, kad iestajas ne gad. visos iepreksejas jautajumos"
fi
echo  "Sis tekst tiks attelots JEBKURA GADIJUMA!"














: << 'END'
#if (...) then ... else... fi
a=$1
if (( $a > 0 ))
then
     echo "Izdr. no galv. zara (ja g.), tad, kad $a ir >0"
else
     echo "Izdr. no galv. zara (ne g.), tad, kad $a nav >0"
fi
echo  "Sis tekst tiks attelots JEBKURA GADIJUMA!"
END




: <<'END'
#if (...) then ... fi
a=$1
if (( $a > 0 ))
then
     echo "Izdr. no galv. zara (ja g.), tad, kad $a ir >0"
fi
echo "Sis tekst tiks attelots JEBKURA GADIJUMA!"
END
