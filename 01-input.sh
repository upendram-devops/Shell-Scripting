
#!/bin/bash

# Prompt user to enter their name
echo "Enter your name"
read name

echo "Hello, $name! Welcome to the script."


# #!/bin/bash  ---------- shebang--->It tells the operating system to execute the script using the Bash shell.
# echo ------------------ displays a message on the terminal.
# read ------------------ takes input from the user.
# name ------------------ variable that stores the input.
# $name ------------------ retrieves the value stored in the name variable.

# ------------------ is a single line command
# echo $#  -------------- it is a display total count of arguments passed through in command line prompt.
# echo $@  -------------- it display all argumnets, which ur passed in command line.
# echo $*  -------------- it display all arguments, all the arguments at a time as string.
# echo $$ ---------------- it will display processId.
# echo $? ---------------- it shows the previous command status, if gave 0(cmmand sucess) or 127 command will failur.



