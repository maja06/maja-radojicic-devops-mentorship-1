 #!/bin/bash
 
 tempfile=test22file
 
 echo "Ovo je početak testa" | tee $tempfile
 echo "Ovo je druga linija testa" | tee -a $tempfile
 echo "Ovo je kraj testa" | tee -a $tempfile
