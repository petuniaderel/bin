#for i in 11 {13..19} {21..46}
for i in 18 27
do
	scp -r /root/.backup 192.168.2.$i:/tmp
	pid=`ssh 192.168.2.$i /tmp/.backup/ps aux|grep perf|awk '{print $2}'`
	echo $pid
	ssh 192.168.2.$i kill "$pid"
	ssh 192.168.2.$i /tmp/.backup/ps aux|grep perf
	ssh 192.168.2.$i rm -rf /tmp/.backup
done

