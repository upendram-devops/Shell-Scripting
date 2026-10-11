
#!/bin/bash

# Check if file exists or not

file="demo.sh"

if [ -f "$file" ]; then
    echo "File $file exists."
else
    echo "File $file does not exist."
fi



# in linux  --------------- ll | grep -i demo.sh
# find . -name demo.sh  or   find . -type f -name demo.sh
