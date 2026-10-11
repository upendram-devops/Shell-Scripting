
#!/bin/bash

# Set memory usage thresholds
threshold_warning=80
threshold_critical=90

# Get current memory usage percentage
current_usage=$(free -h | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

echo "Current memory usage: ${current_usage}%"

# Check memory usage
if [ "$current_usage" -ge "$threshold_critical" ]; then
    echo "CRITICAL: Memory usage is very high! Take action immediately."
elif [ "$current_usage" -ge "$threshold_warning" ]; then
    echo "WARNING: Memory usage is high. Consider freeing memory."
else
    echo "Memory usage is normal."
fi



# awk '/Mem:/ {printf "%.0f", $3/$2 * 100}'

# Let's break it down:

# Part	Meaning
# /Mem:/	----------------- Selects the line containing Mem:
# { }	--------------------- Contains the instructions to execute
# printf -----------------  Formats and prints the result
# "%.0f"------------------- Displays a rounded number with zero digits after the decimal point
# $2 ----------------------- Second column: total memory
# $3 ----------------------- Third column: used memory
# /	------------------------- Division
# * 100	--------------------- Converts the ratio into a percentage
