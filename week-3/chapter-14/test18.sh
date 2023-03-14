#!/bin/bash

set -- $(getopt -q ab:cd "$@")

echo
while [ -n "$1" ]
do
    case "$1" in
          -a) echo "Pronadjena -a opcija";;
        -b) param="$2"
    echo "Pronadjena -b opcija, sa parametrom vrijednosti $param"
    shift ;;
        -c) echo "Pronadjena -c opcija";;
        --) shift
    break ;;
        *) echo "$1 nije opcija";;
    esac
    shift
 done

count=1
for param in "$@"
do
    echo "Parametar #$count: $param"
    count=$[ $count + 1 ]
done