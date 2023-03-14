 #!/bin/bash

 tempfile=$(mktemp -t tmp.XXXXXX)
 
 echo "Ovo je testni fajl." > $tempfile
 echo "Ovo je druga linija u testnom fajlu." >> $tempfile

 echo "Temp fajl se nalazi u: $tempfile"
