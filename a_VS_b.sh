#!/bin/bash

echo "Ievadi a: "
read a
echo "Ievadi b: "
read b
#if [ $a -gt $b ]
if (( $a == $b )) # ja atbilde uz so jautajumu (1.) ir - ja
then #tad
echo "Ir vienads:a ($a) == b ($b)" #tiek izpildits starp if un elif komandu bloks
elif (( $a > $b )) # jautajums (2.) tiek uzdots tikai ja uz 1. bija nee
then
echo "Lielaks par:a ($a) > b ($b)" #sis bloks tiek izpildits, ja atbilde uz 2. ir -jaa
else
echo "Mazaks par:a ($a) < b ($b)" #sis bloks tiek izpildits, ja atbilde uz 2. ir - nee
fi 

