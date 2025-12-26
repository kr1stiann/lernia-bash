#!/usr/bin/env bash

# ---------- Funktioner ----------

is_integer() {
    [[ "$1" =~ ^-?[0-9]+$ ]]
}

check_range() {
    local tal=$1
    if [ "$tal" -lt 10 ] || [ "$tal" -gt 100 ]; then
        echo "Fel: Talet måste vara mellan 10 och 100."
        exit 1
    fi
}

summa() {
    echo $(( $1 + $2 ))
}

differens() {
    echo $(( $1 - $2 ))
}

produkt() {
    echo $(( $1 * $2 ))
}

kvot() {
    if [ "$2" -eq 0 ]; then
        echo "Fel: Division med 0 är inte tillåten."
        exit 1
    fi
    echo $(( $1 / $2 ))
}

# ---------- Inmatning ----------

echo "Mata in tal1:"
read tal1

echo "Mata in tal2:"
read tal2

# ---------- Felhantering ----------

if ! is_integer "$tal1" || ! is_integer "$tal2"; then
    echo "Fel: Du måste mata in heltal."
    exit 1
fi

check_range "$tal1"
check_range "$tal2"

# ---------- Uträkningar ----------

echo "Summan : $(summa "$tal1" "$tal2")"
echo "Differens: $(differens "$tal1" "$tal2")"
echo "Produkt : $(produkt "$tal1" "$tal2")"
echo "Kvot : $(kvot "$tal1" "$tal2")"

#Gör scriptet körbart chmod +x bash16.sh
