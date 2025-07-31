
factorial(){
  local n=$1
  local result=1
  for (( i = 1; i <= n; i++ ))
  do
    result=$((result * i))
  done
  echo $result
}

for (( i = 1; i <= 10; i++ ))
do
  results=$(factorial $i)
  echo "Factorial of $i is ${results}"
done