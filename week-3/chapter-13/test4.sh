#!/bin/bash
#using a variable to hold the list

list="Nikšic Podgorica Cetinje Budva Bar Tivat"
list=$list" Kotor"

for state in $list
do
 echo "Da li si ikada posjetio $state"
done