 #!/bin/bash
 
 tempfile=$(mktemp test19.XXXXXX)
 exec 3>$tempfile
 echo "Ova skripta se piše u privremeni fajl $tempfile"

 echo "Ovo je prva linija" >&3
 echo "Ovo je druga linija." >&3
 echo "Ovo je poslednja linija." >&3
 exec 3>&-
 echo "Završeno kreiranje privremenog fajla:"
 cat $tempfile
 rm -f $tempfile 2> /dev/null