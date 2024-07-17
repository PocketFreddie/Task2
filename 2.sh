#!/bin/sh
check=$(cat /etc/passwd | grep $1)
if [ $check ] ; then
passwd -l $1
echo "$1 is blocked"
else
useradd $1 -p $2
echo "$1 with pass $2 added"
fi
