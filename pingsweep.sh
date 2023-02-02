#!/bin/bash
#Cleat file at the beginning of the process
# Loop in the range of 1 to 255
for i in {1..255};
	do
		echo "[+] pinging 192.168.1.$i";
		ping -c 5 192.168.1.$i | grep "bytes from" >>liveHosts;
done
echo "Done!"
echo liveHosts;
