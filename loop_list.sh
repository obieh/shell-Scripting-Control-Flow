#!/bin/bash
# Author: ObieShenk
# Date: Date: $(date +%Y-%m-%d)
# Simple Greeting Script
# This script demonstrates how to loop through a list of names
# and print customized greetings for each one

# Define a list of names
names=("Alice" "Bob" "Charlie" "Diana" "Eve" "Obieshenk")

echo "----------------------------"

# Loop through each name in the list
for name in "${names[@]}"  # The [@] means "all elements in the array"
do
    # Print a personalized greeting
    echo "Hello, $name! Nice to meet you!"
    
done

echo "----------------------------"
