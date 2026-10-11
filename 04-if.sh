
#!/bin/bash

# Prompt user for input with a timeout

read -t 10 -p "Enter your password within 10 seconds: " password

if [ -z "$password" ]; then
    echo "No password entered within 10 seconds."
else
    echo "Password entered: $password"
fi

