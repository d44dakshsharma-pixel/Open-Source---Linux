#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Daksh Sharma | Reg No: 24BSA10265

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "--------------------------------" > $OUTPUT
echo "Open Source Manifesto - $DATE" >> $OUTPUT
echo "--------------------------------" >> $OUTPUT

echo "I use $TOOL every day, and it represents what open source truly stands for." >> $OUTPUT
echo "To me, freedom means $FREEDOM — the ability to create, modify, and share without limits." >> $OUTPUT
echo "If given the chance, I would build $BUILD and make it freely available to everyone." >> $OUTPUT
echo "I believe knowledge should be open, collaborative, and accessible to all." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT