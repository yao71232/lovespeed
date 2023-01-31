#!/bin/sh
. /etc/profile
. ~/.bash_profile 
rm -rf "/tmp/speed"
"/root/speedtest"  >  "/tmp/speed"
ls1=`cat /tmp/speed | grep Upload | awk '{gsub(/^\s+|\s+$/, "");print}'`
ls2=`cat /tmp/speed | grep Download | awk '{gsub(/^\s+|\s+$/, "");print}'`
lsn=hostname
