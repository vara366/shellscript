fruit=("apple" "banana" "cherry" "date" "elderberry")

for i in "${fruit[@]}"; do
  echo "Index: $i"
done

#!/bin/bash

declare -A student

student[Alice]="A"
student[Bob]="B"
student[Charlie]="C"

for key in "${!student[@]}";
do
  echo "Student: $key, Grade: ${student[$key]}"
done