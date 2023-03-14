#!/bin/bash
#test a multicommand while loop

var1=10

while echo $var1
  
   [ $var1 -ge 0 ]
do
   echo "Ovo je unutar loop-a"
   var1=$[ $var1 -1 ]
done 
