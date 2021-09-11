#!/bin/bash

# Helpers
header () {
  header=$1
  echo -e "[033${header}\n${header//?/=}"
}
declare -a system_info

# hostname

# linux version
system_info+="$(header 'Linux kernel and distro info:')"
system_info+="$(hostnamectl | grep 'hostname\|Operating\|Kernel')"

# processor / cores, ram
header "cpu and memory info:"
lscpu | grep "Architecture\|^CPU(s):\|Model name"
free -h

# HDs/Partitions space
header "HD / partitions"
lsblk | grep -v loop
df -h | grep -v loop

# network interfaces, bandwidth

# status of apache2 and nginx
header "Apache2:"
systemctl status apache2 | grep 'Active:'
header "Nginx:"
systemctl status nginx| grep 'Active:'

# status of major dbs (mysql, mariadb, postgres)
header "Mysql / mariadb":
systemctl status mysql | grep 'Active:'

# processes using the most processor time
header "System load"
top -b -n 1 -i | grep 'load average:'
# errors since last start

# Is cockpit installed?
header "Cockpit"
sudo systemctl status cockpit | grep Loaded:
