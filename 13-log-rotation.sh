#!/bin/bash

LOG_FILE="/var/log/myapp.log"
MAX_SIZE=10485760   # 10 MB

if [ ! -f "$LOG_FILE" ]; then
    echo "Log file does not exist: $LOG_FILE"
    exit 1
fi

FILE_SIZE=$(stat -c%s "$LOG_FILE")

echo "Current log size: ${FILE_SIZE} bytes"

if [ "$FILE_SIZE" -ge "$MAX_SIZE" ]; then

    echo "Log file reached 10 MB. Rotating..."

    # Remove old backup
    rm -f "${LOG_FILE}.2"

    # Rename current backup
    if [ -f "${LOG_FILE}.1" ]; then
        mv "${LOG_FILE}.1" "${LOG_FILE}.2"
    fi

    # Rename current log
    mv "$LOG_FILE" "${LOG_FILE}.1"

    # Create a new empty log
    touch "$LOG_FILE"

    echo "Log rotation completed."

else
    echo "Log size is below 10 MB. No rotation required."
fi
