#4.
#Problem Statement
#Write a shell script in UNIX that takes three numbers as input and determines the largest among them.
#Instructions
#* 		Write proper comment to make your code readable.
#* 		Use proper naming convention for variables etc in your code.
#* 		Ensure your code compiles without any errors/warning/deprecations 
#* 		Avoid too many & unnecessary usage of white spaces (newline, spaces, tabs, …)
#* 		Always test the code thoroughly, before saving/submitting exercises/project.

#!/bin/bash
################## Change log ##################
# Script Name: find_largest_number.sh
# Description: Takes three numbers as input and prints the largest among them.
# Author: S P C H R Vara Prasad
# Date: 1-July-2025
################## Change log ##################

# Function to check if input is a valid number (integer or float)
is_number() {
  [[ $1 =~ ^-?[0-9]+([.][0-9]+)?$ ]]
}

# Prompt user to enter three numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

# Validate all inputs
if ! is_number "$num1" || ! is_number "$num2" || ! is_number "$num3"; then
  echo "Error: All inputs must be valid numbers."
  exit 1
fi

# Determine the largest number using if-else statements
if [ "$num1" -ge "$num2" ] && [ "$num1" -ge "$num3" ]; then
    echo "$num1"
elif [ "$num2" -ge "$num1" ] && [ "$num2" -ge "$num3" ]; then
    echo "$num2"
else
    echo "$num3"
fi

