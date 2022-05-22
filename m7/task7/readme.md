# EPAM University Programs
### _DevOps education program_
## Module 7  Database Administration
#### _TASK 7_

##### PART 1
1. Download MySQL server for your OS on VM.
2. Install MySQL server on VM.
    ```  
    sudo apt-get install mysql-server
   ```
3. Select a subject area and describe the database schema, (minimum 3 tables)

    ![3.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/2.PNG)

4. Create a database on the server through the console.

    ![4.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/4.PNG)

5. Fill in tables.
```
INSERT INTO tag(`name`) VALUES('ZF3');
INSERT INTO tag(`name`) VALUES('book');
INSERT INTO tag(`name`) VALUES('magento');
INSERT INTO tag(`name`) VALUES('bootstrap');

INSERT INTO post(`title`, `content`, `status`, `date_created`) VALUES(
   'A Free Book about Zend Framework',
   'I''m pleased to announce that now you can read my new book "Using Zend Framework 3" absolutely for free! Moreover, the book is an open-source project hosted on GitHub, so you are encouraged to contribute.', 
   2, '2021-08-09 18:49');

INSERT INTO post(`title`, `content`, `status`, `date_created`) VALUES(
   'Getting Started with Magento Extension Development - Book Review',
   'Recently, I needed some good resource to start learning Magento e-Commerce system for one of my current web projects. For this project, I was required to write an extension module that would implement a customer-specific payment method.', 
   2, '2021-08-10 18:51');

INSERT INTO post(`title`, `content`, `status`, `date_created`) VALUES(
   'Twitter Bootstrap - Making a Professionaly Looking Site',
   'Twitter Bootstrap (shortly, Bootstrap) is a popular CSS framework allowing to make your website professionally looking and visually appealing, even if you don''t have advanced designer skills.', 
   2, '2021-08-11 13:01');

INSERT INTO post_tag(`post_id`, `tag_id`) VALUES(1, 1);
INSERT INTO post_tag(`post_id`, `tag_id`) VALUES(1, 2);
INSERT INTO post_tag(`post_id`, `tag_id`) VALUES(2, 2);
INSERT INTO post_tag(`post_id`, `tag_id`) VALUES(2, 3);
INSERT INTO post_tag(`post_id`, `tag_id`) VALUES(3, 4);

INSERT INTO comment(`post_id`, `content`, `author`, `date_created`) VALUES(
    1, 'Excellent post!', 'Anna Mushchynina', '2021-08-09 19:20');
```

6. Construct and execute SELECT operator with WHERE, GROUP BY and ORDER BY.

   ![6.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/6.1.PNG)

   ![6.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/6.2.PNG)

   ![6.3.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/6.3.PNG)

7. Execute other different SQL queries DDL, DML, DCL.

   ![7.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/7.1.PNG)

SQL queries DDL

   ![7.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/7.2.PNG)

SQL queries DML

   ![7.3.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/7.3.PNG)

SQL queries DCL

   ![7.4.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/7.4.PNG)

8. Create a database of new users with different privileges. Connect to the database as a new user and verify that the privileges allow or deny certain actions.

Insert: The user can insert rows into tables

   ![8.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/8.1.PNG)

Delete: The user can remove rows from tables

   ![8.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/8.2.PNG)

Create: The user can create entirely new tables and databases

   ![8.3.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/8.3.PNG)

9. Make a selection from the main table DB MySQL.


##### PART 2

10. Make backup of your database.
11. Delete the table and/or part of the data in the table.
12. Restore your database.

   ![10.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/10.PNG)

13. Transfer your local database to RDS AWS.

   ![13.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/13.PNG)

14. Connect to your database.
15. Execute SELECT operator similar step 6.

   ![15.1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/15.1.PNG)

   ![15.2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/15.2.PNG)

   ![15.3.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/15.3.PNG)

16. Create the dump of your database.

   ![16.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/16.PNG)

##### PART 3 – MongoDB

17. Create a database. Use the use command to connect to a new database (If it 
doesn't exist, Mongo will create it when you write to it).

   ![17.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/17.PNG)

18. Create a collection. Use db.createCollection to create a collection. I'll leave the subject up to you. Run show dbs and show collections to view your database and collections.
Создадим ограниченную коллекцию developers, в которой мы сможем хранить только 10 разработчиков:

   ![18.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/18.PNG)

19. Create some documents. Insert a couple of documents into your collection. I'll leave the subject matter up to you, perhaps cars or hats.

 ![19.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/19.PNG)

20. Use find() to list documents out

 ![20.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m7/task7/images/20.PNG)