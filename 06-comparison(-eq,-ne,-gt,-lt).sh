
#!/bin/bash

a=20
b=20

echo "Comparison operations:"

if [ "$a" -eq "$b" ]; then
    echo "a is equal to b"
    
elif [ "$a" -ne "$b" ]; then
    echo "a is not equal to b"
    
elif [ "$a" -gt "$b" ]; then
    echo "a is greater than b"
    
elif [ "$a" -lt "$b" ]; then
    echo "a is less than b"
fi


