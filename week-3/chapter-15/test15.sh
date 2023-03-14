#!/bin/bash
 
 exec 6<&0
 exec 0< testfile
 count=1
 while read line
 do
 echo "Line #$count: $line"
 count=$[ $count + 1 ]
 done
 exec 0<&6
 read -p "Da li ste završili? " answer
 case $answer in
 Y|y) echo "zdravo";;
 N|n) echo "Izvinite, ovo je kraj.";;
 esac