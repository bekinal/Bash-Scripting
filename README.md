<h1>Securing Services</h1>

<h2>Description</h2>
Project consists of designing a script for penetration testing that uses the ping command to obtain information on network endpoints.
<br />


<h2>Utilities Used</h2>

- <b>VirtualBox</b>
- <b>Debian Environment</b>
- <b>Terminal</b>

<h2>Designing a Penetration Script:</h2>
A penetration test will occur in which a script is written to scan for live hosts on a company's network.
<br />
<br />
Using the root user on the Debian machine, the ip a command is executed to determine the current subnet of the workstation:<br/>
<img src="https://imagizer.imageshack.com/img922/8213/Ul17Vw.png"
<br />
<br />
A file named pingsweep.sh is created and edited with nano:<br/>
<img src="https://imagizer.imageshack.com/img924/7442/HhsTT5.png"
<br />
<br />
A for loop is written that uses ping to find live hosts on the subnet determined previously:<br/>
<img src="https://imagizer.imageshack.com/img922/5695/Oxceyt.png"
<br />
<br />
Using echo, cat, and grep, the liveHosts file is overwritten so it does not contain any data. This file will be cleaned each time the script is run. This is where the ping results will live:<br/>
<img src="https://imagizer.imageshack.com/img922/9605/ywW6ma.png"
<br />
<br />
A for loop is then created to ping all hosts on the network 1 to 255. The loop is appended to only include results including the "bytes from" text- indicating a ping:<br/>
<img src="https://imagizer.imageshack.com/img923/7734/iFYqNc.png"
<br />
<br />
The script is saved and exited:<br/>
<img src="https://imagizer.imageshack.com/img922/7876/4YLOkc.png"
<br />
<br />
The script is given execute permissions and ran. The results can be viewed in the liveHosts file:<br/>
<img src="https://imagizer.imageshack.com/img922/8194/deq7qn.png"
<br />
<br />


<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
