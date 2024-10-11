#!/bin/bash

# Values for my script
num1=15
num2=3

addition=$(echo "$num1 + $num2" | bc)
subtraction=$(echo "$num1 - $num2" | bc)
multiplication=$(echo "$num1 * $num2" | bc)
if [[ "$num2" != "0" ]]; then
    division=$(echo "scale=2; $num1 / $num2" | bc)
else
    division="Undefined (division by zero)"
fi


# Printing results for the first task 
echo -e "\nResults of operations:"
echo "Addition: $num1 + $num2 = $addition"
echo "Subtraction: $num1 - $num2 = $subtraction"
echo "Multiplication: $num1 * $num2 = $multiplication"
echo "Division: $num1 / $num2 = $division"
