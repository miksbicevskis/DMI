#!/bin/bash

echo "Lietotaj, ludzu, ievadi pirmo skaitli: "
read a
echo "Lietotaj, ludzu, ievadi otro skaitli: "
read b
c=`expr $a + $b`
echo "$a + $b = "$c

