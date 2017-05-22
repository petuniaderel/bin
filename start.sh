#!/bin/bash


NEW_VER=( 12 13 14 15 16 18 19 )

for i in $@
do
	
	VER=7
	if [[ " ${NEW_VER[@]} " =~ "$i" ]] 
	then
		VER=8 
	fi
	echo $i
	scp iss_${VER} 192.168.2.$i:/tmp 
	ssh 192.168.2.$i "DISPLAY=:0 nohup /tmp/iss_${VER} < /dev/null > std.out 2> std.err &"
done


