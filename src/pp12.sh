search_word(){
  local word="apple"
  local sentance="I like apple pie and apple juice."

#  echo "$sentance" | tr '[:upper:]' '[:lower:]' | grep -o "$word" | wc -l
  echo "$sentance" | grep -o -i  "$word" | wc -l
}

echo "Searching fro the word apple"
count=$(search_word)
echo "The word 'apple' appears $count times in the sentence."


#grep -i "apple" file.txt