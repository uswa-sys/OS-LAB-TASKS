
#!/bin/bash

echo "===== Basic Calculator ====="

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Choose an operation:"
echo "1. Add (+)"
echo "2. Subtract (-)"
echo "3. Multiply (*)"
echo "4. Divide (/)"

read choice

if [ "$choice" -eq 1 ]
then
    result=$((num1 + num2))
    echo "Result = $result"

elif [ "$choice" -eq 2 ]
then
    result=$((num1 - num2))
    echo "Result = $result"

elif [ "$choice" -eq 3 ]
then
    result=$((num1 * num2))
    echo "Result = $result"

elif [ "$choice" -eq 4 ]
then
    if [ "$num2" -eq 0 ]
    then
        echo "Error: Cannot divide by zero"
    else
        result=$((num1 / num2))
        echo "Result = $result"
    fi

else
    echo "Invalid choice!"
fi
