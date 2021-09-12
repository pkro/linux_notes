#!/bin/bash

#something isn't working right, maybe some sonnets have a different length?

declare sonnets=sonnets.txt
declare sonnets_condensed=sonnets_condensed.txt
declare -i num_sonnets=154
declare -i lines_per_sonnet=14
declare -i random_sonnet_nr=$((($RANDOM % $num_sonnets) + 1))
declare -i start=$(($random_sonnet_nr * $lines_per_sonnet - $lines_per_sonnet))
declare -i end=$(($start + $lines_per_sonnet))
declare -i current_line=1

if [ ! -e ${sonnets_condensed} ]; then
# if true; then
  while read line; do
    if ((${#line} > 12)); then
      echo $line >> $sonnets_condensed
    fi
  done < $sonnets
fi

echo $random_sonnet_nr

while read line; do
  if (($current_line >= $start && $current_line <= $end)); then
    echo $line
  fi
  ((current_line++))
done < $sonnets_condensed
