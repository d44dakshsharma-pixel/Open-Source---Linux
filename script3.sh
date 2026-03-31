#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Daksh Sharma | Reg No: 24BSA10265

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "--------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Firefox config directory..."

CONFIG_DIR="$HOME/.mozilla"

if [ -d "$CONFIG_DIR" ]; then
    ls -ld $CONFIG_DIR
else
    echo "Config directory not found"
fi