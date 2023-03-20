#!/bin/bash

read -n1 -p "Da li želite da nastavite [Y/N]? " answer
case $answer in
Y | y) echo
    echo "Uredu, nastavi…";;
N | n) echo
    echo OK, zdravo
    exit;;
esac
echo "Ovo je kraj skripte"