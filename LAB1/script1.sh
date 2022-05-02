#!/bin/bash
#LAB1 tdums.sh

#Milan Formanek 
#10301770 
#The Bash Disk Utilization Monitoring Script or TDUMS for short

# You can set the threshold with the first command line parameter 

thr=80 #Set default threshold

echo "Space Eval Script, monitors \ and \ boot"
if [ $# -eq 0 ]
  then
    echo "No arguments supplied, defaulting to >$thr% alerts"
else
	 thr=$1
	 echo "Set to >$thr% alerts" 
fi


if [ "$(df --output=pcent,target | awk ' $2=="/"{print $1}' | tr -d '%')" \> $thr ]; then
echo 'Sending Email!!!'

df --output=pcent,target | awk ' $2=="/boot"{print $1}' | tr -d '%'

fi

exit 0