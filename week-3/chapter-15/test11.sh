 #!/bin/bash
 
 exec 2>testerror
 echo "Ovo je početak skripte"
 echo "sad preusmjeri sve ooutput-e na drugu lokaciju"

 exec 1>testout

 echo "ovaj output treba da ide u testout fajl"
 echo "a ovaj treba da ide u testerror fajl" >&2
 