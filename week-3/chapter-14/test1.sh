#!/bin/bash
#using one command line parameter

factorial=1
for (( number = 1; number <= $1 ; number++ ))
do
 factorial=$[ $factorial * $number ]
done
echo Faktorijel od $1 je $factorial