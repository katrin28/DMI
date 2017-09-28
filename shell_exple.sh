#!/bin/bash

#4. piemers
echo -e "\n"
echo "Atbilde uz jautājumu - kas ir pildīts? "  $0
#echo $n
echo "Skriptam nodoto argumenti skaits: "$#
echo "Argumentu saraksts (attēlošana/grupēšana 1. veids) "$*
echo "Argumentu saraksts (attēlošana/grupēšana 2. veids) "$@
#ech "Argumentu saraksts (attēlošana/grupēšana 2. veids) "$@
echo "Ieprekš. komandas izpildes rezultāta kļudas kods (0 - nav kļūdas) "$?
#0 - nav kļūdu
#126 - premission denied
#127 - command not found
echo "Tekoša procesa numurs" $$
echo "Ēnā palaista (pēdēja) procesa numurs: "$!

#3. piemērs
NAME="Vārds Uzvārds"
echo $NAME
unset NAME
echo $NAME

#2. piemērs
#NAME="Vārds Uzvārds"
#readonly NAME
echo $NAME
NAME="Uzvārds Vārds"
#echo $NAME

#1. piemērs
#NAME="Vārds Uzvārds"
#echo $NAME

echo -e "\n"
