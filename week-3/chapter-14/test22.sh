#!/bin/bash

read -p "Unesi svoje godine: " age
days=$[ $age * 365 ]
echo "To vas čini starijim od $days dana! "
