#!/bin/bash
# Monitor disk usage and alert when it exceeds threshold
threshold=90

while true; do
    disk_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
    
    if [ "$disk_usage" -gt "$threshold" ]; then
        echo "WARNING: Disk usage is ${disk_usage}%"
        # Send alert email or notification
        break
    else
        echo "Disk usage OK: ${disk_usage}%"
    fi
    
    sleep 300  # Check every 5 minutes
done
