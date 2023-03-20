#!/bin/bash

echo
while [ -n "$1" ]
do
 case "$1" in
    -a) echo "Pronadjena -a opcija" ;;
    -b) echo "Pronadjena -b opcija" ;;
    -c) echo "Pronadjena -c opcija" ;;
    *) echo "$1 nije opcija" ;;
 esac
 shift
done