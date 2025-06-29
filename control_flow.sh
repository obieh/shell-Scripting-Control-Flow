#!/bin/bash
# Script: Commenting Demo
# Author: ObieShenk
# Date: Date: $(date +%Y-%m-%d)
# Description: This script demonstrates:
#   - If - else control flow

read -p "Enter a number: " num
echo "You have entered the number $num"
if [ $num -gt 0 ]; then
    echo "The number is positive."
fi

