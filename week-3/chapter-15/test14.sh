#!/bin/bash
 
 exec 3>&1
 exec 1>test14out
 echo "Ovo treba da se nalazi u output-u fajla"
 echo "uz ovu liniju."
 exec 1>&3
 echo "Sada stvari treba da se vrate na staro"