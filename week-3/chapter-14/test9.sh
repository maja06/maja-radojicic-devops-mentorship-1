#!/bin/bash
#Testing parameters

if [ $# -ne 2 ]
then
 echo
 echo Upotreba: test9.sh a b
 echo
else
 total=$[ $1 + $2 ]
 echo
 echo Ukupno je $total
 echo
fi