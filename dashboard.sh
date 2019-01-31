#!/bin/bash
#LAB1 dashboard.sh

#Milan Formanek 
#10301770 
#Basic System Dashboard Script
#Needs to be run as root to count directories accurately 


echo "CPU AND MEMORY RESOURCES --------------------------------"
uptime | awk '{print "CPU "$6" "$7" " $8 $9 $10}'
free -h | awk ' $1=="Mem:"{print"Free RAM: " $4}'
echo "\nNETWORK CONNECTIONS -------------------------------------"
cat /proc/net/dev | awk 'NR>2{print $1" Bytes Recieved: "$2" Bytes Transmitted: "$10 }'
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo "Internet Connectivity: Yes"
else
  echo "Internet Connectivity: No"
fi
echo "\nACCOUNT INFORMATION -------------------------------------"
cat /etc/passwd | uniq | wc -l | awk '{print "Total Users: " $1}'
who -u | uniq |wc -l | awk '{print "Number Active: " $1}'
echo "Shells:"
cat /etc/passwd | awk -F ":" '{print $7}' | sort | uniq -c | awk '{print $2": "$1}' | sort  -k2,2nr
echo "\nFILESYSTEM INFORMATION ----------------------------------"
df --inodes / | awk 'NR>1{print "Total Number of Files: "$3}'
find / -type d -print 2>/dev/null| wc -l | awk '{print "Total Number of Directories: "$1}'
exit 0