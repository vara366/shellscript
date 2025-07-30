is_prime() {
  local num=$1
  if (( num <= 1 )); then
    echo "$num is Not Prime Number"
    return 1  # Not prime
  fi
  for (( i = 2; i * i <= num; i++ )); do
    if (( num % i == 0 )); then
      echo "$num is Not Prime Number"
      return 1  # Not prime
    fi
  done
  echo "$num is Prime Number"
  return 0  # Is prime
}

echo "Enter a number to check if it is prime:"
read n
is_prime $n