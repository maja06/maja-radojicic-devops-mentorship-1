#!/bin/bash

echo
while getopts :ab:c opt
do
 case "$opt" in
 a) echo "Pronadjena -a opcija" ;;
 b) echo "Pronadjena -b opcija, sa vrijednošću $OPTARG";;
 c) echo "Pronadjena -c opcija" ;;
 *) echo "Nepoznata opcija: $opt";;
 esac
done