#!/bin/bash
#redirecting the for output to a file

for (( a=1; a<10; a++ ))
do
   echo "Broj je $a"
done > test23.txt
echo "Komanda je izvršena."