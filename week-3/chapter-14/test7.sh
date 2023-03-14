#!/bin/bash
# testing parameters before use

if [ -n "$1" ]
then
 echo Zdravo $1, drago mi je što smo se upoznali.
else
 echo "Izvinite, niste se identifikovali. "
fi
