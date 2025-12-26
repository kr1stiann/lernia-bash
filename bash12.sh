#!/usr/bin/env bash

# Kontrollera att minst två argument skickats in
if [ "$#" -lt 2 ]; then
    echo "$0: Behöver minst två argument."
    exit 1
fi

echo "Antal argument: $#"

#Gör scriptet körbart chmod +x bash12.sh
