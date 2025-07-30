#Problem Statement
#1. Write a Unix shell script to print numbers from 1 to 20 and Skip the numbers that are divisible by 3.
#2. Instructions
#    1. Write proper comment to make your code readable.
#    2. Use proper naming convention for variables etc in your code.
#    3. Ensure your code compiles without any errors/warning/deprecations 

#!/bin/bash
################## Change log ##################
# Script Name: print skip number if it can divion by 3.
# Description: This script prints numbers from 1 to 20 and skips those divisible by 3.
# Author: S P C H R Vara Prasad
# Date: 1-July-2025
################## Change log ##################

# logic to Loop from 1 to 20
for number in {1..20} ## or loop can write in for ((i=1; i<=20; i++)) as well.
do
  # Check if number is divisible by 3
  if [ $((number % 3)) -eq 0 ]; then
    # Skip numbers divisible by 3
    continue
  fi

  # Print the number if it's not divisible by 3
  echo "$number"
done
