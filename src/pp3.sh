#3.
#Problem Statement
#Write a Shell Script in Unix to Reverse the Number. Before reverse ensure it's a positive integer.
#Instructions
#Write proper comment to make your code readable. Use proper naming convention for variables etc in your code. Ensure your code compiles without any errors/warning/deprecations   
#!/bin/bash
################## Change log ##################
# Script Name: reverse_number.sh
# Description: This script takes a number as input, verifies if it is a positive integer, and then prints its reverse.
# Author: S P C H R Vara Prasad
# Date: 1-July-2025
################## Change log ##################

# Function: reverse_number
# Description: Reverses a given positive integer.
# Parameters:
#   $1 - The number to reverse
reverse_number() {
  local original_number="$1"
  local reversed_number=""

  # Loop to reverse the digits
  while [ "$original_number" -gt 0 ]; do
    local digit=$((original_number % 10))
    echo "Current digit: $digit"
    reversed_number="${reversed_number}${digit}"
    echo "Reversed number so far: $reversed_number"
    original_number=$((original_number / 10))
    echo "Remaining number: $original_number"
  done

  echo "$reversed_number"
}

# Prompt user for input
read -p "Enter a positive integer: " input_number

# Validate input: check if it's a positive integer using regex
if ! [[ "$input_number" =~ ^[0-9]+$ ]] || [ "$input_number" -eq 0 ]; then
  echo "Error: Please enter a valid positive integer greater than 0."
  exit 1
fi

# Call the reverse function
reverse_number "$input_number"



