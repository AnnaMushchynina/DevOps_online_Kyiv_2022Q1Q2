# EPAM University Programs
### _DevOps education program_
## Module 8 Python Intro
#### _TASK 8_

1. Write easy program, which will display current date and time.

  ``` 
    import datetime
    now = datetime.datetime.now()
    print ("Current date and time : ")
    print (now.strftime("%Y-%m-%d %H:%M:%S"))
  ```

    ![1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m8/task8/images/1.PNG)
    
2. Write python program, which will accept comma-separated numbers, and then it should write tuple and list  of  them: 
Enter numbers: 1, 2, 7, 43, 9
Output:
List: [‘1’, ‘2’, ‘7’, ‘43’, ‘9’]
Tuple: (‘1’, ‘2’, ‘7’, ‘43’, ‘9’)

  ```
    values = input("Input some comma-seprated numbers : ")
    list = values.split(",")
    tuple = tuple(list)
    print('List : ',list)
    print('Tuple : ',tuple)
  ```

    ![2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m8/task8/images/2.PNG)

3. Write python program, which will ask file name. File should be read, and only even 
lines should be shown.

    ![3.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m8/task8/images/3.PNG)

4. Write python program, which should read html document, parse it, and show it’s 
title.
5. Write python program, which will parse user’s text, and replace some emotions with 
emoji’s (Look: pip install emoji)
6. Write program, that will show basic PC information (OS, RAM amount, HDD’s, and
etc.)