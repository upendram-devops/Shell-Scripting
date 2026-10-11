
#!/bin/bash

threshold=60

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1)

echo "Current CPU usage: ${cpu_usage}%"

if [ "$cpu_usage" -ge "$threshold" ]; then
    echo "🚨 CPU usage is more than or equal to the threshold: ${cpu_usage}%"
else
    echo "✅ CPU usage is normal: ${cpu_usage}%"
fi
