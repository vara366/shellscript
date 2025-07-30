names=("sam" "john" "jane" "doe" "alice" "bob" "charlie" "dave" "eve" "frank")


echo "Original array: ${names[@]}"
echo "Original indices: ${!names[@]}"

unset names[1]  # Remove the second element (index 1)

echo "Original array: ${names[@]}"
echo "Original indices: ${!names[@]}"

names=("${names[@]}") # Re-index the array
echo "Original array: ${names[@]}"
echo "Original indices: ${!names[@]}"
