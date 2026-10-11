
#!/bin/bash

# Read user password silently

read -s -p "Enter your password: " password

echo  # Move to a new line after password input

echo "Password entered."


# read — Accepts input from the user.
# -s — Hides the characters while typing.
# -p — Displays a prompt message.
# password — Stores the entered password in a variable.
