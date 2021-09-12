#!/bin/bash

echo "you gave $# arguments to the script $0: $@"
echo "the first one was $1"
echo "Options accepted by this script are u and p"

# specify known options with "[letter]:"
# unknown options with ":"
# just "[letter]" to check IF it was passed
while getopts :u:p:ab option; do
  case $option in
  u) user=$OPTARG;;
  p) pass=$OPTARG;;
  a) echo "\"a\" flag was passed";;
  b) echo "\"b\" flag was passed";;
  ?) echo "I don't know $OPTARG";;
  esac
done

echo "user: $user, pass: $pass"