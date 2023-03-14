#!/bin/bash
#iterate through all the files in a directory

for file in /mnt/c/Users/majar/OneDrive/Documents/DevOpsMentorship/maja-radojicic-devops-mentorship-1/week-3/chapter-13/*
do
 
  if [ -d "$file" ]
  then
    echo "$file je direktorijum" 
  elif [ -f "$file" ]
  then
    echo "$file je fajl"
  fi
done