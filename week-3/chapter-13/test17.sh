 #!/bin/bash
 #breaking out of a for loop

 for var1 in 1 2 3 4 5 6 7 8 9 10
 do
    if [ $var1 -eq 5 ]
    then
       break
    fi
       echo "Broj iteracije: $var1"
 done
  echo "For loop je završen"

