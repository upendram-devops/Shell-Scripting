# Shell-Scripting
Automate the regular work using a linux scripting



🐧 Shell Scripting: Brief Explanation & Important Commands

1. What Is Shell Scripting?

Shell scripting is a way to automate Linux tasks by writing multiple commands in a file and executing them together.

A shell script is commonly saved with the .sh extension.

Example:

#!/bin/bash

echo "Welcome to DevOps"
date
whoami
pwd

Output:

Welcome to DevOps
Current date and time
Current username
Current directory

Why Do We Use Shell Scripting?
Automate repetitive tasks.
Monitor CPU, memory, and disk usage.
Manage files and directories.
Take backups and rotate logs.
Automate deployments in DevOps.
Schedule tasks using Cron jobs.


2. How to Execute a Shell Script

Create a script:

vi script.sh

Give execute permission:

chmod +x script.sh

Execute the script:

./script.sh

Alternatively:

bash script.sh


3. Important Linux Commands for Shell Scripting
   
Command	Purpose	Example
echo	Display output	echo "Hello"
read	Accept user input	read name
pwd	Display current directory	pwd
ls	List files	ls -l
cd	Change directory	cd /tmp
mkdir	Create directory	mkdir devops
touch	Create an empty file	touch test.txt
cat	Display file contents	cat test.txt
cp	Copy files	cp a.txt b.txt
mv	Move or rename files	mv old.txt new.txt
rm	Remove files	rm test.txt
grep	Search for text	grep "error" app.log
find	Find files	find /tmp -name "*.log"
wc	Count lines, words, or bytes	wc -l file.txt
date	Display date and time	date
whoami	Display current username	whoami
df -h	Check disk usage	df -h
free -h	Check memory usage	free -h
ps	Display processes	ps aux
top	Monitor running processes	top
chmod	Change permissions	chmod +x script.sh
tar	Archive files	tar -czf backup.tar.gz folder/

5. Important Shell Scripting Concepts
A. Variables

Used to store values.

#!/bin/bash

name="Upendra"
echo "Hello, $name"
B. Conditional Statements (if-else)

Used to make decisions.

#!/bin/bash

read -r -p "Enter a number: " num

if [ "$num" -gt 10 ]; then
    echo "Number is greater than 10"
else
    echo "Number is 10 or less"
fi
C. For Loop

Used to repeat commands.

#!/bin/bash

for i in {1..5}
do
    echo "$i"
done
D. While Loop

Repeats commands while a condition is true.

#!/bin/bash

counter=1

while [ "$counter" -le 5 ]
do
    echo "$counter"
    ((counter++))
done
E. Functions

Used to organize reusable code.

#!/bin/bash

greet() {
    echo "Welcome to DevOps"
}

greet
F. Command-Line Arguments

Used to pass values when running a script.

#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Total arguments: $#"

Run:

bash script.sh Hello DevOps

Output:

Script name: script.sh
First argument: Hello
Second argument: DevOps
Total arguments: 2
5. Important Special Variables
Variable	Meaning
$0	Script name
$1, $2	First and second arguments
$#	Number of arguments
$@	All arguments as separate words
$*	All arguments, generally treated as one string when quoted
$?	Exit status of the previous command
$$	PID of the current shell
$!	PID of the most recently started background process
$HOME	Current user's home directory
$USER	Current username
$PATH	Directories searched for executable commands

Example:

#!/bin/bash

mkdir testdir

if [ "$?" -eq 0 ]; then
    echo "Directory created successfully"
else
    echo "Directory creation failed"
fi

Here, $? checks whether the mkdir command succeeded. In Bash, exit status 0 means success; a nonzero status indicates failure.

6. Important Operators
Operator	Meaning	Example
-eq	Equal to	[ "$a" -eq "$b" ]
-ne	Not equal to	[ "$a" -ne "$b" ]
-gt	Greater than	[ "$a" -gt "$b" ]
-lt	Less than	[ "$a" -lt "$b" ]
-ge	Greater than or equal to	[ "$a" -ge "$b" ]
-le	Less than or equal to	[ "$a" -le "$b" ]
-f	File exists and is a regular file	[ -f file.txt ]
-d	Directory exists	[ -d /tmp ]
-z	String is empty	[ -z "$name" ]
-n	String is not empty	[ -n "$name" ]

7. Important Shell Scripts for DevOps Practice

Since shell scripting is useful in DevOps, practise these scripts:

User validation — Check whether the current user is root.
Disk monitoring — Check disk usage and generate alerts.
CPU monitoring — Check CPU utilization.
Memory monitoring — Monitor available memory.
Log rotation — Archive large log files.
Backup automation — Back up important directories.
File management — Find, copy, and delete files.
Service monitoring — Check whether services such as Jenkins or Docker are running.
Process monitoring — Check whether a process is running.
URL monitoring — Check whether an application endpoint is responding.

8. Important Shell Scripting Interview Questions

Prepare these questions for Linux and DevOps interviews:

What is shell scripting, and why do we use it?
What is the difference between $@ and $*?
What is the difference between = and ==?
What is the purpose of #!/bin/bash?
What is the difference between for and while loops?
What is the purpose of $??
What is the difference between single quotes and double quotes?
What is the difference between > and >>?
How do you check whether a file exists?
How do you check disk usage using a shell script?
How do you schedule a script using Cron?
How do you debug a shell script?
What is the difference between bash script.sh and ./script.sh?
How do you handle errors in a shell script?
How do you monitor a service using a shell script?
My Recommendation

Follow this learning order:

Basics → Variables → User Input → If-Else → For Loop → While Loop → Functions → Arguments → File Handling → Monitoring Scripts → Cron Jobs
