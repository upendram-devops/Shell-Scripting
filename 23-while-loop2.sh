
# Example of a while loop calculating the factorial of a number

echo "Enter a number to calculate its factorial:"
read -r num

if [[ "$num" =~ ^[0-9]+$ ]]; then
factorial=1
counter=$num

while [ "$counter" -gt 0 ]
do
    factorial=$((factorial * counter))
    ((counter--))
done

echo "Factorial of $num is: $factorial"

else
echo "Invalid input! Please enter a non-negative integer."
fi
