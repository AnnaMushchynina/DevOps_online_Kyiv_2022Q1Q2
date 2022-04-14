# EPAM University Programs
### _DevOps education program_
## Module 4 Linux Essentials
#### _TASK 4.2_


1. Analyze the structure of the /etc/passwd and /etc/group file, what fields are present in it, what users exist on the system? Specify several pseudo-users, how to define them?
File structure of /etc/passwd
username: pswd: uid: gid: uid comments: directory: shell
Pseudo-users. Each of the UNIX variants contains pseudo-user description lines in the password file. These descriptions are never edited. Users of these names are not registered in the system and are only needed to confirm ownership of the processes. The most used are:
 - daemon - Used by system service processes
 - bin - Gives ownership of executables command
 - adm - Owns registration files
 - nobody - Used by many services
 - sshd – used by the secure shell server

 ![1.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.2/images/1.1.PNG)

 The file structure /etc/group
 group_name:password:group_id:list

 ![1.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.2/images/1.2.PNG) 

2) What are the uid ranges? What is UID? How to define it?
A UID (user identifier) is a number assigned by Linux to each user on the system. This number is used to identify the user to the system and to determine which system resources the user can access.
 - UID 0 (zero) is reserved for the root.
 - UIDs 1–99 are reserved for other predefined accounts.
 - UID 100–999 are reserved by system for administrative and system accounts/groups.
 - UID 1000–10000 are occupied by applications account.
 - UID 10000+ are used for user accounts.
3) What is GID? How to define it?
Groups in Linux are defined by GIDs (group IDs).
 - GID 0 (zero) is reserved for the root group.
 - GID 1–99 are reserved for the system and application use.
 - GID 100+ allocated for the user’s group.
4) How to determine belonging of user to the specific group?

 ![4.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.2/images/4.PNG) 

5) What are the commands for adding a user to the system? What are the basic parameters required to create a user?
The main commands for working with Linux accounts are useradd, userdel, and usermod, as 
well as the password file editor vipw . The command interface is as follows:
1) useradd [-c uid comment] [-d dir] [-e expire] [-f inactive] [-g gid] [-m [-k skel_dir]] [-s 
shell]
[-u uid [-o]] username
2) userdel [-r] username
3) usermod [-c uid comment] [-d dir [-m]] [-e expire] [-f inactive] [-g gid] [-G gid [, gid]]
[-l new username] [-s shell] [-u uid [-o]] username

6) How do I change the name (account name) of an existing user?
    usermod -l login-name old-name
7) What is skell_dir? What is its structure?
Directory /etc/skel/ (skel is derived from the “skeleton”) is used to initiate home directory when a user is first created. 
 “skeleton” directory is defined in /etc/default/useradd file.
 cat /etc/default/useradd

 ![7.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/task4.2/images/7.PNG) 

8) How to remove a user from the system (including his mailbox)?
    userdel -r username
9) What commands and keys should be used to lock and unlock a user account?
lock users in Linux
Use the command “passwd -l username” or Use the command “usermod -l username”
unlock users in Linux
Use the command “passwd -u username” or Use the command “usermod -U username”
10) How to remove a user's password and provide him with a password-free login for subsequent password change?
    chage --lastday 1970-01-01 username or passwd --expire username
11) Display the extended format of information about the directory, tell about the information columns displayed on the terminal.
Long Listing Format:
 - The file type.
 - The file permissions.
 - Number of hard links to the file.
 - File owner.
 - File group.
 - File size.
 - Date and Time.
 - File name.
 Here is an example:
    ls -l /etc/hosts
    -rw-r--r-- 1 root root 337 Oct  4 11:31 /etc/hosts
12) What access rights exist and for whom (i. e., describe the main roles)? Briefly describe the acronym for access rights.
Nine characters representation as "rwxrwxrwx", where some "r", "w" and "x" can be replaced with "-".
Permissions can be changed using three commands: chown (change owner), chgrp (change group), and chmod with extended parameter format: before the access part (before the "+" or "-" sign), can list the roles "u", "g", "o" and "a" (all, which corresponds to "ugo") for which access is being changed.
13) What is the sequence of defining the relationship between the file and the user?
When the relationship between the file and the user who started the process, the role is determined as follows:
If the UID of the file is the same as the UID of the process, the user is the owner of the file.
If the GID of the file matches the GID of any group the user belongs to, he is a member of the group to which the file belongs.
If neither the UID no the GID of a file overlaps with the UID of the process and the list of groups that the user running it belongs to, that user is an outsider.
14) What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal.
Permissions can be changed using three commands: chown (change owner), chgrp (change group), and chmod with extended parameter format: before the access part (before the "+" or "-" sign), can list the roles "u", "g", "o" and "a" (all, which corresponds to "ugo") for which access is being changed. Besides, when specifying access, you can use "=" instead of "+" and "-", then the specified access methods are allowed for the specified roles, and the unspecified ones are banned.
Instead of a pair of chown commands, the master is the file; chgrp group file you can use one: 
chown master: group file, which changes both the UID and GID of the file (directory, links, etc.).
15) What is an example of octal representation of access rights? Describe the umask command.
All twelve attributes can be represented as bits of a binary number, equal to 1 if the attribute is set, and 0 if not. The order of the bits is as follows:
sU | sG | t | rU | wU | xU | rG | wG || xG | rO | wO | xO, 
where sU is SetUID, sG is SetGID, t is a t attribute (ls –dl - then the directory is displayed as a file), than three triples of access attributes.
This format can be used in the chmod command instead of the construct "roles = access_types", and the number must be written in octal system. For example, the / tmp directory attributes will be equal 1777, the / bin / su attributes will be - 4711, the / bin / ls attributes will be - 755, and so on.
The same bitwise representation of attributes regulates the default access rights when creating files and directories. This is done using the umask command. The only umask parameter is an octal number that 
specifies the attributes that should not be set on a new file (666) or directory (777). 
For example, umask 0 will cause files to be created with "rw-rw-rw-" attributes and directories "rwxrwxrwx". The umask 022 command removes write permissions from the default attributes for everyone except the owner (it turns out "rw-r - r--" and "rwxr-xr-x", respectively), and with umask 077 new files and directories become completely are not available ("rw -------" and "rwx ------") to everyone except their owners
16) Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes.
Sticky Bit is mainly used on folders in order to avoid deletion of a folder and it’s content by other users though they having write permissions on the folder contents. If Sticky bit is enabled on a folder, the folder contents are deleted by only owner who created them and the root user. No one else can delete other users data in this folder (Where sticky bit is set). This is a security measure to avoid deletion of critical folders and their content (sub-folders and files), though other users have full permissions.
17) What file attributes should be present in the command script?