# EPAM University Programs
### _DevOps education program_
## Module 2 Virtualization and Cloud Basic
#### _TASK 2.1_

- What are the most popular hypervisors for infrastructure virtualization?
- Briefly describe the main differences of the most popular hypervisors.
- WORK WITH VIRTUALBOX
- WORK WITH VAGRANT


## What are the most popular hypervisors for infrastructure virtualization?

The most popular hypervisors :
1. VMware vSphere / ESXi
2. Hyper-V
3. Xen
4. KVM
5. Oracle VM VirtualBox
I am working with VMware, Hyper-V and VirtualBox


## Briefly describe the main differences of the most popular hypervisors
Есть гипервизоры нескольких типов. Основное различие между гипервизорами типа 1 и типа 2 заключается в том, что тип 1 работает на «голом железе», а тип 2 работает поверх операционной системы. У каждого типа гипервизора также есть свои плюсы и минусы и конкретные варианты использования.

## WORK WITH VIRTUALBOX
1. First run VirtualBox and Virtual Machine (VM).
    -  Create VM1 and install Ubuntu
    -  Clone an existing VM1 by creating a VM2
    -   Create a group of two VM: VM1, VM2
    ![task2.1_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/task2.1.PNG)
    -   For VM1, changing its state, take several different snapshots, forming a branched tree of snapshots
    ![task2.1.8_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/task2.1.8.PNG)
    -   Export VM1. Save the *.ova file to disk. Import VM from *.ova file 
    ![task2.1.9.2_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/task2.1.9.2.PNG)
    ![task2.1.9_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/task2.1.9.PNG)
2. Configuration of virtual machines
    -  Explore VM configuration options
    -  Configure the USB to connect the USB ports
    ![task2.2.2_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/task2.2.2.PNG)
    -   Configure a shared folder to exchange data between the virtual machine and 
the host
    ![task2.2.3_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/task2.2.3.PNG)
    - Configure different network modes for VM1, VM2
    ![network_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/task2.4.4.PNG)
3. Work with CLI through VBoxManage
    - Examine the purpose and execute the basic commands of VBoxManage list, 
showvminfo, createvm, startvm, modifyvm, clonevm, snapshot, controlvm
    ![task2.3.1_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/task2.3.1.PNG)
    ![task2.3.2_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/task2.3.2.PNG)
## WORK WITH VAGRANT
1. Download and installed the required version of Vagrant
2. Create a folder "student name" (in English)
    ![part3.2_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/part3.2.PNG)
3. Initialize the environment with the default Vagrant box
    ![part3.3_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/part3.3.PNG)
4. Run vagrant up
    ![part3.4.1_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/part3.4.1.PNG)
    ![part3.4.2_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/images/part3.4.2.PNG)
5. Connect to the VM using the program MobaXterm
    ![part3.5_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/part3.5.PNG)
6. Record the date and time
    ![part3.6_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/part3.6.PNG)
7. Stop and delete the created VM
    ![part3.7_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/part3.7.PNG)
8.  Create your own Vagrant box
    ![part3.8.1_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/part3.8.1.PNG)
    ![part3.8.2_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/part3.8.2.PNG)
    ![part3.8.3_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/part3.8.3.PNG)
    ![part3.8.4_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.1/part3.8.4.PNG)




