#!/bin/bash

# Script 1: System Identity Report
# Author: Daksh Sharma | Reg No: 24BSA10265 | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Daksh Sharma (24BSA10265)"
SOFTWARE_CHOICE="Ubuntu Linux"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)

# Distro name
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "========================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "========================================="

echo "System Information:"
echo "-------------------"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"

echo ""
echo "User Information:"
echo "-------------------"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"

echo ""
echo "System Status:"
echo "-------------------"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $DATE"

echo ""
echo "License Info:"
echo "-------------------"
echo "$SOFTWARE_CHOICE is open-source software"
echo "primarily licensed under the GNU General Public License (GPL)."

echo "========================================="