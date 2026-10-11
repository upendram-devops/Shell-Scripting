
Example of a while loop counting from 5 to 1

counter=5

echo "Counting down:"

while [ "$counter" -gt 0 ]
do
echo "$counter"
((counter--))
done


# counter=5 → Initializes the counter to 5.
# while [ "$counter" -gt 0 ] → Runs while the counter is greater than 0.
# echo "$counte → Prints the current counter value.
# ((counter--)) → Decreases the counter by 1 in each iteration.
# done → Ends the loop.

# ▶️ Output
# Counting down:
# 5
# 4
# 3
# 2
# 1
