
#!/bin/bash

a=10
b=20

echo "Logical operations"

if [ "$a" -eq 5 ] && [ "$b" -eq 20 ]; then
    echo "Both conditions are true."

elif [ "$a" -eq 10 ] || [ "$b" -eq 20 ]; then
    echo "At least one condition is true."

elif ! [ "$a" -eq 0 ]; then
    echo "a is not equal to 0."
fi
