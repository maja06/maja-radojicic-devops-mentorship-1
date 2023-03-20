#!/bin/bash

if read -t 5 -p "Molim unesite vaše ime: " name
then
 echo "Zdravo $name, dobrodošao u moju skriptu"
else
 echo
 echo "Izvini, presporo! "
fi
