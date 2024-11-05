#!/bin/bash

# Function to get the number of files
get_file_count() {
  ls -1 | wc -l
}

# Actual number of files
file_count=$(get_file_count)

# Game loop
while true; do
  read -p "Guess how many files are in the current directory: " guess
  if [[ $guess -lt $file_count ]]; then
    echo "Your guess is too low. Try again."
  elif [[ $guess -gt $file_count ]]; then
    echo "Your guess is too high. Try again."
  else
    echo "Congratulations! You've guessed correctly."
    break
  fi
done
