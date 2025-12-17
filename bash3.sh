#!/usr/bin/env bash
read -p "Mata in ett namn: " namn
echo "$namn" >> namn.txt
echo "Tillagt: $namn"


#Gör scriptet körbart chmod +x bash3.sh