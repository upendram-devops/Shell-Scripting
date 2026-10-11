
#!/bin/bash

log_file="/root/devops/k8s"
max_size=1000000  # Approximately 1 MB

if [ "$(wc -c < "$log_file")" -gt "$max_size" ]; then
mv "$log_file" "$log_file.old"
touch "$log_file"
echo "Log file rotated successfully."
else
echo "Log file size is within the limit."
fi
