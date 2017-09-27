#!/bin/bash
#4.piemers
echo "Tiek pildiits skripts:"$0
#echo $0
#echo $n
echo "Skriptam nodoto argumentu skaits:" $#
echo "Skriptam nodoti argumenti (attelosana/grupesana 1):" $*
echo "Skriptam nodoti arguemnti (attelosana/grupesana 2):" $@
#echo $?
echo "Skriptam pieskirtais procesa numurs:" $$
#echo $!

#3.piemers
NAME="Vaards Uzvaards"
echo $NAME
unset NAME
echo $NAME

#2.piemers
#readonly NAME
#echo $NAME
#NAME="Uzvaards Vaards"
#echo $NAME

#1.piemers
#NAME="Vaards Uzvaards"
#echo $NAME

