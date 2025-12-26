#!/usr/bin/env bash

echo "Vill du konvertera från Fahrenheit eller Celsius? [F/C] :"
read val

if [ "$val" = "F" ] || [ "$val" = "f" ]; then
    echo "Hur många grader Fahrenheit?"
    read f
    c=$(( (f - 32) * 5 / 9 ))
    echo "$f grader Fahrenheit är $c grader Celsius."

elif [ "$val" = "C" ] || [ "$val" = "c" ]; then
    echo "Hur många grader Celsius?"
    read c
    f=$(( c * 9 / 5 + 32 ))
    echo "$c grader Celsius är $f grader Fahrenheit."

else
    echo "Felaktigt val. Ange F eller C."
fi
