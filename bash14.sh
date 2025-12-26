#!/usr/bin/env bash


# Variabler
USER_NAME=$(whoami)
HOME_DIR="$HOME"
DATE=$(date +%Y-%m-%d)
BACKUP_FILE="/tmp/${USER_NAME}.${DATE}.tar.gz"

# Kontrollera att hemkatalogen finns
if [ ! -d "$HOME_DIR" ]; then
    echo "Fel: Hemkatalogen finns inte."
    exit 1
fi

# Kontrollera att /tmp finns och är skrivbar
if [ ! -d /tmp ] || [ ! -w /tmp ]; then
    echo "Fel: /tmp finns inte eller är inte skrivbar."
    exit 1
fi

# Skapa backup
tar -czf "$BACKUP_FILE" "$HOME_DIR" 2>/dev/null

# Kontrollera att backupen skapades korrekt
if [ $? -ne 0 ]; then
    echo "Fel: Backupen misslyckades."
    exit 1
fi

echo "Backup skapad: $BACKUP_FILE"

#Gör scriptet körbart chmod +x bash14.sh
