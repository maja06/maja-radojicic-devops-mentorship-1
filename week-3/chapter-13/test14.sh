#!/bin/bash
#nesting for loops

for (( a=1; a<=3; a++ ))
do
   echo "Počinje loop $a"
   for (( b=1; b<=3; b++ ))
   do 
      echo "  Unutar loop-a: $b"
   done
done

