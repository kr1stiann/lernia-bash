#!/usr/bin/env bash


function linje {
    antal=$1

    for ((i=0; i<antal; i++)); do
        printf "*"
    done
    printf "\n"
}

linje 20

#Gör scriptet körbart chmod +x bash15.sh
