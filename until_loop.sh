#!/bin/bash
# Waiting for a server to respond

echo "Server Ping Checker"
echo "------------------"

# Initialize our counter
attempt=1
max_attempts=5
server="google.com"  # The server we want to ping

echo "Checking if $server is responding..."

# The until loop will run UNTIL the ping succeeds (exit status 0)
until ping -c 1 $server &> /dev/null  # Try pinging once, hide output
do
    echo "Attempt $attempt: Server not responding..."
    
    # Check if we've reached maximum attempts
    if [ $attempt -eq $max_attempts ]; then
        echo "Error: Server did not respond after $max_attempts attempts"
        exit 1
    fi
    
    sleep 2  # Wait 2 seconds before trying again
    ((attempt++))  # Increase attempt counter by 1
done

# This line only runs if the until condition becomes true (ping succeeded)
echo "Success! $server is now responding."

exit 0
