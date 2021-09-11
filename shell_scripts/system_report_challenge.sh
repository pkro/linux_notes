#!/bin/bash

# Helpers
header () {
  header=$1
  echo -e "\033[4;32;47m${header}\033[0m"
}
declare -a system_info

# hostname

# linux version
system_info+="$(header 'Linux kernel and distro info:')"
system_info+="$(hostnamectl | grep 'hostname\|Operating\|Kernel')"

# processor / cores, ram
system_info+="$(header 'cpu and memory info:')"
system_info+="$(lscpu | grep 'Architecture\|^CPU(s):\|Model name')"

system_info+="$(free -h)"

# HDs/Partitions space
system_info+="$(header 'HD / partitions')"
system_info+="$(lsblk | grep -v loop)"
system_info+="$(df -h | grep -v loop)"

# network interfaces, bandwidth

# status of apache2 and nginx
system_info+="$(header 'Apache2:')"
system_info+="$(systemctl status apache2 | grep 'Active:')"
system_info+="$(header 'Nginx:')"
system_info+="$(systemctl status nginx| grep 'Active:')"

# status of major dbs (mysql, mariadb, postgres)
system_info+="$(header 'Mysql / mariadb':)"
system_info+="$(systemctl status mysql | grep 'Active:')"

# processes using the most processor time
system_info+="$(header 'System load')"
system_info+="$(top -b -n 1 -i | grep 'load average:')"
# errors since last start

# Is cockpit installed?
system_info+="$(header 'Cockpit')"
system_info+="$(sudo systemctl status cockpit | grep Loaded:)"

echo $system_info[@]