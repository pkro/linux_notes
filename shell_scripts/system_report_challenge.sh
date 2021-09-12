#!/bin/bash

# Helpers
header () {
  header=$1
  echo -e "\n\033[4;32;47m${header}\033[0m\n\r"
}

declare -a system_info

printf "%s %(%Y-%m-%d %H:%M:%S)T\n" "System report generated on"
# hostname + linux version
system_info+="$(header 'Linux kernel and distro info:')"
system_info+="$(hostnamectl | grep 'hostname\|Operating\|Kernel')"

# processor / cores, ram
system_info+="$(header 'cpu:')"
system_info+="$(lscpu | grep 'Architecture\|^CPU(s):\|Model name')"
system_info+="$(header 'memory:')"
system_info+="$(free -h)"

# HDs/Partitions space
system_info+="$(header 'HD / partitions')"
system_info+="$(lsblk | grep -v loop)"
system_info+="$(header 'Filesystems')"
system_info+="$(df -h | grep -v loop)"

# network interfaces, bandwidth

# status of common web services
system_info+="$(header 'Noteworthy services')"

declare -A services

services_to_check=("apache2" "nginx" "mysql")

for (( i=0; i<${#services_to_check[@]}; i++ )); do
  service="${services_to_check[i]}";
  service_heading+=$(printf "%30s\n" $service)

  services[$service]="$(systemctl status $service 2>&1 | grep 'Active:' || echo 'not found')";
  service_status+=$(printf "%20s\n" ${services[$service]})
done

system_info+=$(echo -e $service_heading)
system_info+=$(echo "\n")
system_info+=$(echo -e $service_status)

# processes using the most processor time
system_info+="$(header 'System load')"
system_info+="$(top -b -n 1 -i | grep 'load average:')"
# errors since last start
system_info+="$(header 'Last 5 errors in journal')"
system_info+="$(journalctl -n 5 --no-pager -b --priority=3)"

# Is cockpit installed?
system_info+="$(header 'Cockpit')"
system_info+="$(sudo systemctl status cockpit | grep Loaded:  2>&1)"

for (( i = 0; i< ${#system_info[@]}; i++ )); do
  echo -e "${system_info[i]}";
done

