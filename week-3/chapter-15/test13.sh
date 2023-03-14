 #!/bin/bash

 exec 3>test13out
 echo "Ovo treba da se prikaže na monitoru"
 echo "ovo treba da bude u fajlu" >&3
 echo "Onda ovo treba da se prikaže na monitoru"