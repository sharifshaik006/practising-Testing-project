#!/bin/bash

# Variables
PARTITION="/dev/disk3s1s1"
THRESHOLD=4  # 4% used space threshold. You might want to set it to 80 because you are checking used space.
EMAIL="sharifshaik006@gmail.com"
ALERT_MESSAGE="Warning! Disk space on $PARTITION is below the threshold."

# Get the available disk space as a percentage
USED_SPACE=$(df | grep "$PARTITION" | awk '{print $5}' | sed 's/%//')

# Compare and send alert if below threshold
if (( $USED_SPACE > $THRESHOLD )); then
    echo "$ALERT_MESSAGE" | mail -s "Disk Space Alert" "$EMAIL"
fi