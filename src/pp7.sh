
marks=(85 92 78 88 91 76 84 95 89 77)

sum=0

for marks in "${marks[@]}"
do
  sum=$((sum + marks))
done

avg=$(( $sum / ${#marks[@]}))

echo "Total Marks: $sum"
echo "Average Marks: $avg"



marks=()
sum=0

for i in {1..10}
do
  read  "Enter marks for student $i: " mark
  marks+=("$mark")
done

for marks in "${marks[@]}"
do
  echo "Current Marks: $marks"
  sum=$((sum + marks))
done

avg=$(( $sum / ${#marks[@]}))

echo "Entered Marks: ${marks[*]}"
echo "Total Marks: $sum"
echo "Average Marks: $avg"