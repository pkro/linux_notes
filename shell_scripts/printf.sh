#!/bin/bash
printf "%(%Y-%m-%d %H:%M:%S)T\n" $(date +%s)
# printf defaults to current time (dateformat only) when no argument given
printf "%(%Y-%m-%d %H:%M:%S)T\n"
# pass -1 if you have multiple args and want to use printf built-in time
printf "%(%Y-%m-%d %H:%M:%S)T %s\n" -1 "is the date"
printf "%10s: %5d\n" "A label" 123  "B label" 456
printf "%-10s: %5d\n" "A label" 123  "B label" 456
printf "%-10s: %-5d\n" "A label" 123  "B label" 456
printf "%-10s: %05d\n" "A label" 123  "B label" 456