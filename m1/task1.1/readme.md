# EPAM University Programs
### _DevOps education program_
## Module 1 DevOps Introduction
#### _TASK 1.1_

- Make file readme.md in folder task1.1 and describe results of your work 
with Git
- Describe in your own words what DevOps is.
- Insert your text about DevOps in readme.md.

## Describe results of my work with Git

- Clone repo to your workstation

   ```sh 
   git clone https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2.git
    ```
- Make init commit
    ```sh 
    git add .
    git commit -m "init commit"
    ```
- Create develop branch and checkout on it
    ```sh 
    git checkout -b develop
    ```
- Go to develop branch
    ```sh 
    git checkout develop
    ```
- Merge two new branches into develop using git merge command
    ```sh 
    git merge images
    git merge styles
    ```
- Merge develop into master
    ```sh 
    git checkout main
    git merge develop
    ```
- Push all your changes with all your branches to origin
    ```sh 
    git push origin --all
    ```
- Execute command “git reflog“ and save it content somewhere (not in 
repository) with filename “task1.1_GIT.txt”.
![task1.1_GIT](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m1/task1.1/images/task1.1_Git.PNG)

## Describe in your own words what DevOps is
_DevOps is a methodology for continuous delivery of program code to the user_

