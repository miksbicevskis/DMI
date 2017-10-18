#!/bin/bash

echo"Ievadi a,b,c ko salidzinat: "
read a b c 
if [ $a -gt $b -a $a -gt $c ]
then
  big=$a
elif  [ $b -gt $a -a $b -gt $c ]
then
  big=$b
elif  [ $c -gt $a -a $c -gt $b ]
then
  big=$c
elif [$a -eq $b -a $a -eq $c -a $b -eq $c -eq $b ]
then
  big="Visi cipari ir vienadi"
else
  big="Nevar atmineet"
fi
echo"Rezultats : $big"

