 #!/bin/bash
 
 tempdir=$(mktemp -d dir.XXXXXX)
 cd $tempdir
 tempfile1=$(mktemp temp.XXXXXX)
 tempfile2=$(mktemp temp.XXXXXX)
 exec 7> $tempfile1
 exec 8> $tempfile2
 echo "Slanje podataka u direktorijum $tempdir"
 echo "Ovo je testna linija za  $tempfile1" >&7
 echo "Oov je testna linija za $tempfile2" >&8