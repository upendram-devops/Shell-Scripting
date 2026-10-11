
#!/bin/bash

echo "Multiplication tables (1 to 10):"

for ((i=1; i<=10; i++))
do
echo "Multiplication table for $i:"

```
for ((j=1; j<=10; j++))
do
    echo "$i * $j = $((i * j))"
done

echo "----------"
```

done



Multiplication tables (1 to 10):
Multiplication table for 1:
1 * 1 = 1
1 * 2 = 2
1 * 3 = 3
...
1 * 10 = 10
----------
Multiplication table for 2:
2 * 1 = 2
2 * 2 = 4
