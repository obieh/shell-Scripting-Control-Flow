#!/bin/bash
# Script: Commenting Demo
# Author: ObieShenk
# Date: $(date +%Y-%m-%d)
# Description: This script demonstrates:
#   - If - else control flow

#!/bin/bash

read -p "Enter a number: " num

# Input validation 
while [[ ! $num =~ ^-?[0-9]+$ ]]; do
    echo "Error: Not a valid integer. Please enter a whole number." >&2
    read -p "Enter a number: " num
done

echo "You have entered the number $num"
if [ $num -gt 0 ]; then
    echo "The number is positive."
elif [ $num -lt 10 ] 
then
    echo "The number is negative"
else
    echo "The number is zero"
fi

