#!/usr/bin/env bash

read -p "Mata in tal1: " a
read -p "Mata in tal2: " b

if [[ "$a" -eq "$b" ]]; then
  echo "Talen är lika."
else
  echo "Talen är inte lika."
  if [[ "$a" -gt "$b" ]]; then
    echo "$a är större än $b."
  else
    echo "$a är mindre än $b."
  fi
fi


#Gör scriptet körbart chmod +x bash5.sh
