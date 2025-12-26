#!/usr/bin/env bash

echo "Mata in tal1:"
read tal1

echo "Mata in tal2:"
read tal2

summa=$((tal1 + tal2))
diff=$((tal1 - tal2))
produkt=$((tal1 * tal2))
kvot=$((tal1 / tal2))
rest=$((tal1 % tal2))

echo "$tal1 + $tal2 = $summa"
echo "$tal1 - $tal2 = $diff"
echo "$tal1 * $tal2 = $produkt"
echo "$tal1 / $tal2 = $kvot, rest: $rest"

#Gör scriptet körbart chmod +x bash9.sh
