#5.
#Problem Statement
#Write a Unix Shell Script to perform basic arithmetic operations (Addition, Subtraction, Multiplication, and Division) based on user input.
#Instructions
#Instructions:
#* 		Write proper comment to make your code readable.
#* 		Use proper naming convention for variables etc in your code.
#* 		Ensure your code compiles without any errors/warning/deprecations 

#!/bin/bash
################## Change log ##################
# Script Name: basic_calculator.sh
# Description: This script performs basic arithmetic operations (add, subtract, multiply, divide)
#              based on user input.
# Author: S P C H R Vara Prasad
# Date: 1-July-2025
################## Change log ##################


# Defining numbers
number1=20
number2=20



# Prompt for the operation number the user to choose an arithmetic operation
read operation_choice

# Perform the selected arithmetic operation
case "$operation_choice" in
  1)
    result=$((number1 + number2))
    ;;
  2)
    result=$((number1 - number2))
    ;;
  3)
    result=$((number1 * number2))
    ;;
  4)
    # Check for division by zero
    if (( $(echo "$number2 == 0" | bc -l) )); then
      echo "Error: Division by zero is not allowed."
      exit 1
    fi
    result=$((number1 / number2))
    ;;
  *)
    echo "Invalid choice"
    exit 1
    ;;
esac
echo "$result"


