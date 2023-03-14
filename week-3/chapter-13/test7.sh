#!/bin/bash
#iterate through multiple directories

for file in /mnt/c/Users/majar/OneDrive/Documents/DevOpsMentorship/maja-radojicic-devops-mentorship-1/week-3/chapter-13/* /mnt/c/Users/majar/OneDrive/Documents/DevOpsMentorship/maja-radojicic-devops-mentorship-1/week-3/chapter-13/maja
do
 
  if [ -d "$file" ]
  then
    echo "$file je direktorijum" 
  elif [ -f "$file" ]
  then
    echo "$file je fajl"
  else
    echo "$file ne postoji"
  fi
done