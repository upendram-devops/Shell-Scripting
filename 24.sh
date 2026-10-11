
#!/bin/bash

if [[ $(whoami) == "root" ]]; then
echo "You are the root user."
else
echo "You are not the root user."
fi
