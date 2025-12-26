#!/usr/bin/env bash

echo "Ange poäng (0–100):"
read score

if [ "$score" -ge 90 ]; then
    echo "Betyg: MVG"
elif [ "$score" -ge 65 ]; then
    echo "Betyg: VG"
elif [ "$score" -ge 50 ]; then
    echo "Betyg: G"
else
    echo "Betyg: IG"
fi

#Gör scriptet körbart chmod +x bash8.sh