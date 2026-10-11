
#!/bin/bash

str1="hello"
str2="world"

echo "String operations:"

if [ "$str1" = "$str2" ]; then
    echo "Strings are equal."
elif [ "$str1" != "$str2" ]; then
    echo "Strings are not equal."
fi

str3="$str1 $str2"

echo "Concatenated string: $str3"

length=${#str1}

echo "Length of str1 is $length"

