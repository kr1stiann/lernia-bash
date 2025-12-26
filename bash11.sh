#!/usr/bin/env bash

# Kontrollera att exakt två argument skickas in
if [ "$#" -ne 2 ]; then
    echo "Användning: ./bash11.sh [c|f] grader"
    exit 1
fi

typ=$1
temp=$2

if [ "$typ" = "c" ] || [ "$typ" = "C" ]; then
    f=$(( temp * 9 / 5 + 32 ))
    echo "$temp grader Celsius är $f grader Fahrenheit"

elif [ "$typ" = "f" ] || [ "$typ" = "F" ]; then
    c=$(( (temp - 32) * 5 / 9 ))
    echo "$temp grader Fahrenheit är $c grader Celsius"

else
    echo "Felaktigt val. Använd 'c' eller 'f'."
    exit 1
fi
