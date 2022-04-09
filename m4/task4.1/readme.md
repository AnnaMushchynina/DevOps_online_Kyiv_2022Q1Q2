# EPAM University Programs
### _DevOps education program_
## Module 4 Linux Essentials
#### _TASK 4.1_

##### Part1

 1. Log in to the system as root (or sudo-er)
 2. Use the passwd command to change the password. Examine the basic parameters of the command. What system file does it change *?
 /etc/passwd 
The output is formatted to show: 
 - The username
 - Password status Locked (L), No Password (NP), Password (P)
 - Date of last password change
 - Minimum password age
 - Maximum password age
 - Warning period (the number of days given to the user to change their password before it expires)
 - Inactivity period (number of days after a password expires before it is locked)

 3. Determine the users registered in the system, as well as what commands they execute. What additional information can be gleaned from the command execution?
 
   ![3.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/3.PNG)

 4. Change personal information about yourself.
 
 ![4.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/4.PNG)

 5. Become familiar with the Linux help system and the man and info commands. Get help on the previously discussed commands, define and describe any two keys for these commands. Give examples.
 
 ![5.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/5.1.PNG)

![5.1.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/5.1.1.PNG)

![5.1.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/5.1.2.PNG)

![5.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/5.2.PNG)

![5.2.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/5.2.1.PNG)

![5.2.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/5.2.2.PNG)

 6. Explore the more and less commands using the help system. View the contents of files .bash* using commands.
  
 ![6.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/6.1.PNG)

 ![6.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/6.2.PNG)

 7. * Describe in plans that you are working on laboratory work 1. Tip: You should read the documentation for the finger command.
  
 ![7.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/7.PNG)

 8. * List the contents of the home directory using the ls command, define its files and directories. Hint: Use the help system to familiarize yourself with the ls command
  
 ![8.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/8.PNG)
  
##### Part2

 1. Examine the tree command. Master the technique of applying a template, for example, display all files that contain a character c, or files that contain a specific sequence of characters. List subdirectories of the root directory up to and including the second nesting level.
  
 ![t2.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.1.PNG)

 ![t2.1.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.1.1.PNG) 

 2. What command can be used to determine the type of file (for example, text or binary)? Give an example.
  
 ![t2.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.2.PNG)

 3. Master the skills of navigating the file system using relative and absolute paths. How can you go back to your home directory from anywhere in the filesystem?
    cd ~
 4. Become familiar with the various options for the ls command. Give examples of listing directories using different keys. Explain the information displayed on the terminal using the -l and -a switches.
 -a – visible all files, do not ignore entries starting with ;
 -l – use a long listing format;

 ![t2.4.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.4.PNG)

 5. Perform the following sequence of operations:
    - create a subdirectory in the home directory;
    mkdir -p test
    - in this subdirectory create a file containing information about directories located in the root directory (using I/O redirection operations);
    tree -d -o "/home/anna/test.resalt.txt"
    - view the created file;
    - copy the created file to your home directory using relative and absolute addressing.
    - delete the previously created subdirectory with the file requesting removal;
    - delete the file copied to the home directory.
     
    ![t2.5.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.5.PNG)
    
 6. Perform the following sequence of operations:
    - create a subdirectory test in the home directory;
    - copy the .bash_history file to this directory while changing its name to labwork2;
    cp .bash_history /home/anna/test/labwork2
    - create a hard and soft link to the labwork2 file in the test subdirectory;
    
  ![t2.6.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.6.1.PNG)
    - how to define soft and hard link, what do these concepts;
       A symbolic or soft link is an actual link to the original file, whereas a hard link is a mirror copy of the original file

     ![t2.6.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.6.2.PNG)
  
    ![t2.6.3.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.6.3.PNG)

    - change the data by opening a symbolic link. What changes will happen and why
    change original file, потому что soft link не имеет содержимого а просто ссылается на исходный файл
    - rename the hard link file to hard_lnk_labwork2;
    - rename the soft link file to symb_lnk_labwork2 file;
    - then delete the labwork2. What changes have occurred and why?
    
    ![t2.6.4.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.6.4.PNG)
    
 7. Using the locate utility, find all files that contain the squid and traceroute sequence.
 
    ![t2.7.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.7.PNG)

 8. Determine which partitions are mounted in the system, as well as the types of these partitions.
  
 ![t2.8.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.8.PNG)

 9. Count the number of lines containing a given sequence of characters in a given file.
 10. Using the find command, find all files in the /etc directory containing the host character sequence.
 
  ![t2.10.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.10.PNG)

 11. List all objects in /etc that contain the ss character sequence. How can I duplicate a similar command using a bunch of grep?
 
 ![t2.11.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.11.PNG)

 12. Organize a screen-by-screen print of the contents of the /etc directory. Hint: You must use stream redirection operations.
 
 ![t2.12.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.12.PNG)

 13. What are the types of devices and how to determine the type of device? Give examples.
  - Character Device
  - Block Device
  - Pipe Device
  - Socket Device
  - Device Characterization
  
 ![t2.13.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.13.PNG)

 14. How to determine the type of file in the system, what types of files are there?
 ls command and  file command 
 The first character
indicates the file type:
- - regular file;
d - directory;
b - block device;
c - character device;
l - symbolic link;
p - pipe (pipe, fifo);
s - socket

 ![t2.14.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.14.PNG)

 15. * List the first 5 directory files that were recently accessed in the /etc directory

 The -1 (that's a one) says one file per line and the tail says take the last 5 try

  ![t2.15PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.1/images/t2.15.PNG)



