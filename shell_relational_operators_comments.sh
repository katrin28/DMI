#!/bin/bash

a=10
b=20
# 3. piemers
echo "Vai skaitlis $a nav vienads ar skaitli $b?"
if [ $a -ne $b ]
then
echo "Ja, $a un $b nav vienadi skaitli"
else
echo "Ne, $a un $b ir vienadi"
fi






:<<'END'
# 2.piemers - salidzinasana - vai ir vienads (operacijas ==)
echo "--------- 1. piemers ---------- "
echo "Vai skaitlis $a ir vienads ar skaitli $b" # -"-
if [ $a == $b ]
then
echo "Jā" # tikai ja atbilde uz jautajumu vai a ir vienads ar burtu b ir TRUE
echo "$a un $b ir vienadi"
else
echo "Nē"
echo "$a un $b ir daZadi skaitli" # -#-
fi
echo "-------------------------------" #paradas jebkura gadijuma
:<<'END' #komentara bloka beigas

a=10
b=10
# 1.piemers - salidzinasana - vai ir vienads (atslega -eq)
echo "--------- 1. piemers ---------- "
echo "Vai skaitlis $a ir vienads ar skaitli $b" # -"-
if [ $a -eq $b ]
then
echo "Jā" # tikai ja atbilde uz jautajumu vai a ir vienads ar burtu b ir TRUE
echo "$a un $b ir vienadi"
else
echo "Nē"
echo "$a un $b ir daZadi skaitli"
fi
echo "-------------------------------" #paradas jebkura gadijuma
END
#komentara bloka sakums
