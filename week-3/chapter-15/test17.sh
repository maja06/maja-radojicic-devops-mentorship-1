#!/bin/bash
 
 exec 3> test17file
 echo "Ovo je testna linija" >&3
 exec 3>&-

 cat test17file

 exec 3> test17file
 echo "Ovo neće biti kako treba" >&3