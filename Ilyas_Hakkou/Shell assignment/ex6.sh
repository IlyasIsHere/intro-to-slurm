#!/bin/bash

hostname=$(hostname)
echo "Hostname: $hostname"

kernel_version=$(uname)
echo "Kernel Version: $kernel_version"

cpu_info=$(lscpu | grep "Model name" | cut -d':' -f2 | xargs)
echo "CPU Information: $cpu_info"

total_ram=$(grep MemTotal /proc/meminfo | awk '{print $2}')
echo "Total RAM: $total_ram"

current_date_time=$(date +"%Y-%m-%d %H:%M:%S")
echo "Current Date and Time: $current_date_time"
