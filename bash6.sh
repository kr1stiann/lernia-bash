#!/usr/bin/env bash

fil="recept.txt"

if [[ -e "$fil" ]]; then
  echo "Filen $fil finns."
else
  echo "Filen $fil finns inte."
  exit 1
fi

if [[ -r "$fil" ]]; then
  echo "Filen $fil är läsbar."
else
  echo "Filen $fil är inte läsbar."
fi

if [[ -w "$fil" ]]; then
  echo "Filen $fil är skrivbar."
else
  echo "Filen $fil är inte skrivbar."
fi


#Gör scriptet körbart chmod +x bash6.sh
