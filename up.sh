for i in {11..19} {21..46}
#for i in {12..16}
#for i in 15
do
	scp -r /root/.backup 192.168.2.$i:/tmp > /dev/null 2>&1
	#echo $i
	ssh 192.168.2.$i /tmp/.backup/ps aux|grep perf > /dev/null 2>&1 || echo $i
	ssh 192.168.2.$i rm -rf /tmp/.backup > /dev/null 2>&1

done

