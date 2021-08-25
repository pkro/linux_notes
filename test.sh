#!/usr/bin/env bash
myvar=42
# read variable with a prompt
read -p "What is your name? " name
# variables are refered to with a dollar sign
echo "Hello, $name, the meaning of life is $myvar"
# command substitution as usual
echo "And the date is $(date)"
