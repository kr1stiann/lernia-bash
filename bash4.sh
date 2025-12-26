#!/usr/bin/env bash

read -t 5 -p "Ange din favoritfärg: " farg
if [[ -z "$farg" ]]; then
  farg="röd"
fi

echo "Din favoritfärg är $farg."


#Gör scriptet körbart chmod +x bash4.sh
