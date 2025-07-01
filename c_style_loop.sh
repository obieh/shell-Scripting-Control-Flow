#!/bin/bash
# Author: ObieShenk
# Date: Date: $(date +%Y-%m-%d)
# C-style for loop demonstration
# This mimics the for loop syntax from C/C++/Java

echo "---------------------"

# C-style for loop syntax:
# for ((initialization; condition; increment))
for (( i=0; i<=5; i++ ))
do
    # Print the current number with a message
    echo "Count: $i - Hello from the loop!"
done

echo "---------------------"

