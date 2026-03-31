#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Daksh Sharma | Reg No: 24BSA10265

PACKAGE="firefox"   # change this if needed

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Check if installed (Ubuntu uses dpkg)
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."

    dpkg -l $PACKAGE | grep "^ii"

    echo ""
    echo "Details:"
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description' | head -n 3

else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Philosophy Note:"
case $PACKAGE in
    firefox) echo "Firefox: a community-driven browser defending an open web." ;;
    vlc) echo "VLC: media freedom — play anything without restrictions." ;;
    git) echo "Git: decentralized control — no single authority owns your code." ;;
    python) echo "Python: open, readable, and built by the community." ;;
    *) echo "Open-source software empowers users with freedom and transparency." ;;
esac