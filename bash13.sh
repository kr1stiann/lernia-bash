#!/usr/bin/env bash


# Kontrollera att skriptet körs som root
if [ "$EUID" -ne 0 ]; then
    echo "Fel: Detta skript måste köras som root."
    exit 1
fi

# Säkerhetskontroll: kontrollera att katalogen finns
if [ ! -d /tmp ]; then
    echo "Fel: /tmp finns inte."
    exit 1
fi

# Töm /tmp (inklusive dolda filer, men inte . och ..)
rm -rf /tmp/* /tmp/.[!.]* /tmp/..?* 2>/dev/null

echo "/tmp har tömts."

#Gör scriptet körbart chmod +x bash13.sh
