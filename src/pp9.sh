m1=85
m2=90
m3=75
m4=80
m5=95

calculate_avg(){
  local total=0
  for mark in "$@"
  do
    total=$((total + mark))
  done
  local avg=$((total /  $# )) # Using $# to get the number of arguments passed
  echo $avg
}

avg=$(calculate_avg m1 m2 m3 m4 m5)
echo "Average Marks: $avg"