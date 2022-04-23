# EPAM University Programs
### _DevOps education program_
## Module 4 Linux Essentials
#### _TASK 4.3_

##### Part1
1. How many states could has a process in Linux?
    In Linux, a process is an instance of executing a program or command. While these processes exist, they’ll be in one of the five possible states:
    - Running or Runnable (R)
    - Uninterruptible Sleep (D)
    - Interruptable Sleep (S)
    - Stopped (T)
    - Zombie (Z)
2. Examine the pstree command. Make output (highlight) the chain (ancestors) of the current process.
    pstree is a Linux command that shows the running processes as a tree
    pstree -h -p | less

    ![2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/2.PNG)

3. What is a proc file system?
  Proc file system (procfs) is virtual file system created on fly when system boots and is dissolved at time of system shut down.
  It contains useful information about the processes that are currently running, it is regarded as control and information center for kernel.
  The proc file system also provides communication medium between kernel space and user space.
Below is snapshot of /proc from my PC.
    ls -l /proc

    ![3.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/3.PNG)

4. Print information about the processor (its type, supported technologies, etc.).

    ![4.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/4.PNG)

5. Use the ps command to get information about the process. The information should be as follows: the owner of the process, the arguments with which the process was launched for execution, the group owner of this process, etc.

    ![5.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/5.PNG)

6. How to define kernel processes and user processes?
Kernel processes "kthread"
    sudo ps --ppid=2 --pid=2
    or
    sudo pstree 2
User processes "init"
    sudo ps -N --ppid=2 --pid=2
    or
    sudo pstree

7. Print the list of processes to the terminal. Briefly describe the statuses of the processes. What condition are they in, or can they be arriving in?
Process State:
 - created
 - ready
 - running
 - waiting
 - terminated

    ![7.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/7.PNG)

 - Running (R)
 - Sleeping (S)
 - Uninterruptable (D)
 - Stoped (T)
 - Zombie (Z)
8. Display only the processes of a specific user.
    ps -e -u anna
9. What utilities can be used to analyze existing running tasks (by analyzing the help for the ps command)? ps, pgrep, pstree, top
 - Top – Linux Process Monitoring
 - VmStat – Virtual Memory Statistics.
 - Lsof – List Open Files.
 - Tcpdump – Network Packet Analyzer.
 - Netstat – Network Statistics.
 - Htop – Linux Process Monitoring.
 - Iotop – Monitor Linux Disk I/O.
 - Iostat – Input/Output Statistics
10. What information does top command display?
  The top command is used to display all the running and active real-time processes in an ordered list and updates it regularly. It displays CPU usage, Memory usage, Swap Memory, Cache Size, Buffer Size, Process PID, User, Commands, and much more.
11. Display the processes of the specific user using the top command.
    top -u anna

    ![11.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/11.PNG) 

12. What interactive commands can be used to control the top command? Give a couple of examples.
k key opens a prompt to kill a process. r key opens a prompt to renice a process priority. f key opens a menu to configure fields shown. c key toggles full path of process commands

13. Sort the contents of the processes window using various parameters (for example, the amount of processor time taken up, etc.)
To sort processes by time, use key Shift + T; 
  by CPU used, Shift + P; 
  by memory used, Shift + M

    ![13.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/13.PNG)

14. Concept of priority, what commands are used to set priority?
 Use nice if you want to start a process with an adjusted priority. Use renice to change the priority for a currently active process. A
15. Can I change the priority of a process using the top command? If so, how?
    A process can be reniced from top using key r
16. Examine the kill command. How to send with the kill command process control signal? Give an example of commonly used signals.
    kill command sends a shutdown signal to a process. To send a specific signal, use kill -N process. The signal SIGTERM (15) is used to ask a process to stop and the signal SIGKILL (9) is used to force a process to stop
17. Commands jobs, fg, bg, nohup. What are they for? Use the sleep, yes command to demonstrate the process control mechanism with fg, bg.
jobs command is used to view active processes. fg command resumes a process in foreground. bg command resumes a process in background. nohup runs a command immune to hangup signals.

jobs command shows jobs numbers in brackets like [2], so jobs can be easily referenced using %number

##### Part2
1. Check the implementability of the most frequently used OPENSSH commands in the MS Windows operating system. (Description of the expected result of the commands +screenshots: command – result should be presented)
scp and ssh commands are implemented in MS Windows as checked in the example screenshot:

    ![2.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/2.1.PNG)

2. Implement basic SSH settings to increase the security of the client-server connection (at 
least)
 Basic SSH security settings are:
 - disable root login;
 - change default 22 port;
 - disable password auth, leave only auth by key; To implement these, following lines in /etc/ssh/shhd_config file are to be changed, example:
    PermitRootLogin no
    Port 22666
    PasswordAuthentication no
3. List the options for choosing keys for encryption in SSH. Implement 3 of them.
   When generating SSH key with ssh-keygen, you can specify options -t for algorithm, -b for key size and -f for key file destination, -p for passphrase, -q option is added for silent output for example: 
    ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -p mewpassphrase -q 
4. Implement port forwarding for the SSH client from the host machine to the guest Linux
virtual machine behind NAT.
 In Virtualbox, set up a port forwarding from port 22666 to port 22 on guest VM:

    ![2.4.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/2.4.PNG)

 Then, tested SSH connection connecting to localhost on selected port 22666:

    ![2.4.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/2.4.2.PNG)

5*. Intercept (capture) traffic (tcpdump, wireshark) while authorizing the remote client on the
server using ssh, telnet, rlogin. Analyze the result

    ![2.5.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.3/images/2.5.PNG)