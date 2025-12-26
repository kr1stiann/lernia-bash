#!/usr/bin/env bash

read -p "Mata in ett tal mellan 1 och 10: " n

if [[ "$n" -ge 1 && "$n" -le 10 ]]; then
  echo "Tack. Du skrev $n."
else
  echo "Men seriöst... $n är inte mellan 1 och 10."
fi


#Gör scriptet körbart chmod +x bash7.sh
