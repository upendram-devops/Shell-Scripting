
#!/bin/bash

threshold_critical=90
threshold_warning=80

current_usage=$(df -P / | awk 'NR==2 {print $5}' | cut -d '%' -f1)

echo "Current disk usage: ${current_usage}%"

if [ "$current_usage" -ge "$threshold_critical" ]; then
    echo "Disk usage is critical. Take action immediately!"

elif [ "$current_usage" -ge "$threshold_warning" ]; then
    echo "Disk usage is high. Consider freeing up space."

else
    echo "Disk usage is normal."
fi



current_usage=$(df -P / | awk 'NR==2 {print $5}' | cut -d '%' -f1)

# df -h  / --------- it diplay filesystem in cureent directory.
# awk  -------------
# awk 'NR==2 {print $5}' ------------- from first input, select second line and in second line ,select 5th entry.
# cut -d '%' -f1 ---------------- from second input, remove the % and extract one first remaing part. (ex:-- echo 50% -------> 50 (output))



1. current_usage=
current_usage=
current_usage is a variable name.
= assigns a value to the variable.
There must be no spaces around = in Bash variable assignments.

Example:

current_usage=85

Now the variable contains 85.

2. $()
$(command)

$() is called command substitution.

It executes the command inside the parentheses and captures its output.

Example:

current_usage=$(echo 85)
echo "$current_usage"

Output:

85
3. df -P /
df -P /

df means disk free. It displays filesystem disk space usage.

Part	Meaning
df	Displays filesystem disk usage.
-P	Uses a predictable, POSIX-style output format.
/	Checks the filesystem containing the root directory.

Example output:

Filesystem     1024-blocks    Used Available Capacity Mounted on
/dev/nvme0n1p1     10000000 5000000   5000000      50% /

Here, the disk usage is 50%.

4. The Pipe Symbol |
command1 | command2

The pipe (|) sends the output of the first command to the second command as input.

In your command:

df -P / | awk 'NR==2 {print $5}'

The output of df -P / is passed to awk.

Think of it as:

Command 1 → Output → Command 2

5. awk 'NR==2 {print $5}'

This part extracts the disk usage percentage.

Let's break it down.

awk

awk is a Linux text-processing tool used to extract and manipulate text.

NR

NR stands for Number of Records.

In this example, each line is treated as a record.

NR==1 means the first line.
NR==2 means the second line.
NR==3 means the third line.
==

== means equal to.

Therefore:

NR==2

means select the second line.

{ }

Curly braces contain the action that awk performs when the condition matches.

print

print displays the selected data.

$5

In awk, $5 means the fifth field (column) of the current line.

For example:

/dev/nvme0n1p1 10000000 5000000 5000000 50% /

The fields are:

Field	Value
$1	/dev/nvme0n1p1
$2	10000000
$3	5000000
$4	5000000
$5	50%
$6	/

So:

awk 'NR==2 {print $5}'

extracts:

50%

Important: NR==2 assumes the disk information is on line 2. This works with the normal output of df -P /.

6. cut -d '%' -f1

This part removes the % symbol.

cut

cut extracts specific sections of text.

-d

-d specifies the delimiter—the character used to separate fields.

'%'

The percent sign is the delimiter.

For example:

50%

The delimiter is %.

-f1

-f1 selects the first field before the delimiter.

Example:

echo "50%" | cut -d '%' -f1

Output:

50
