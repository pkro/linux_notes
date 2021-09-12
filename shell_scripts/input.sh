#!/bin/bash

# show prompt before input
read -p "Please enter your name: " name
# silent input
echo "Please enter your pass"
read -s pass
# add a default
read -ep "Favorite color? Default is " -i "blue" favcolor

echo "Hi $name! please select an animal:"

# interactive select
select animal in "cat" "dog" "bird" "fish" "quit"
do
  if [ $animal = "quit" ]; then
        break
  fi
  echo "You selected $animal"
done

# expect a certain format:
read -p "What year? [nnnn] " year

until [[ $year =~ [0-9]{4} ]]; do
  read -p "What year? [nnnn] " year
done
echo "Selected year: $year"


