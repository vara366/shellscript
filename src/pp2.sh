#2.
#* Problem Statement
#* Write a Unix shell script that defines a function find_and_replace, which takes a given text and replaces all occurrences of a specified word with another word.
#* Instructions
#* Write proper comment to make your code readable. Use proper naming convention for variables etc in your code. Ensure your code compiles without any errors/warning/deprecations 
#* Example
#* OUTPUT
#*  
#* Original text: This is C programming. 
#1. Modified text: This is Unix programming.   

#!/bin/bash
################## Change log ##################
# Script Name: find_and_replace.sh
# Description: This script defines a function that replaces all occurrences of a specified word with another word in a given text.
# Author: S P C H R Vara Prasad
# Date: 01-July-2025
################## Change log ##################

# Function: find_and_replace
# Parameters/Arguments:
#   $1 - The original text string
#   $2 - The word to find
#   $3 - The word to replace with
find_and_replace() {
  local original_text="$1"
  local search_word="$2"
  local replacement_word="$3"

  # Display the original text
  echo "Original text: $original_text"

  # Use 'sed' to perform the word replacement
  local modified_text
  modified_text=$(echo "$original_text" | sed "s/$search_word/$replacement_word/g")

  # Display the modified text
  echo "Modified text: $modified_text"
}

# Example usage of the function
# Replace 'C' with 'Unix' in the input text
input_statment="This is C programming."
find_word="C"
replace_word="Unix"

# Call the function
find_and_replace "$input_statment" "$find_word" "$replace_word"


