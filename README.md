# Introduction to database administration

## Project Overview
This project demonstrates the setup and administration of a MySQL database server. The key tasks include setting up the MySQL server, using MySQL Workbench as a GUI administration tool, creating and managing database objects like views, queries, and stored procedures, optimizing query performance, managing user permissions, and performing database backups and restores.

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Installation](#installation)
3. [Project Tasks](#project-tasks)
    1. [MySQL Database Server Setup](#mysql-database-server-setup)
    2. [MySQL Workbench Installation](#mysql-workbench-installation)
    3. [GitHub Project Initialization](#github-project-initialization)
    4. [Creating a Data View](#creating-a-data-view)
    5. [SQL Query for Data View](#sql-query-for-data-view)
    6. [Stored Procedure for Insertion and Update](#stored-procedure-for-insertion-and-update)
    7. [Query Optimization with Indexes](#query-optimization-with-indexes)
    8. [User Management](#user-management)
    9. [Backup Generation](#backup-generation)
    10. [Database Restore](#database-restore)
4. [How to Use](#how-to-use)
5. [Conclusion](#conclusion)

## Prerequisites
- **MySQL Server**: Download and install the latest version from [MySQL Downloads](https://dev.mysql.com/downloads/).
- **MySQL Workbench**: Use this tool to manage the MySQL server. Download from [here](https://dev.mysql.com/downloads/workbench/).
- **GitHub Account**: For repository management, set up a GitHub account [here](https://github.com/).

## Installation

### 1. MySQL Database Server Setup
- Download and install MySQL Server from the official [MySQL website](https://dev.mysql.com/downloads/mysql/).
- Follow the installation instructions, including setting up the root user and configuring server settings.
- Ensure MySQL is running by checking its status using `mysql -u root -p` in the terminal or MySQL Command Line Client.

### 2. MySQL Workbench Installation
- Install MySQL Workbench from the [official MySQL Workbench download page](https://dev.mysql.com/downloads/workbench/).
- Connect to your MySQL database using Workbench by entering your root credentials and server address.

## Project Tasks

### 3. Creating a Data View
- Create a view in your MySQL database. For example:
  ```sql
  use adm;
  Create view product_category
  select p.product_id, 
       p.product_name, 
       p.quantity_per_unit, 
       p.unit_price, 
       c.category_id, 
       c.name
  from product as p inner join category as c on p.category_id = c.category_id

- Use SQL queries to extract data from the view. Example:
    ```sql
    SELECT * FROM adm.product_category;
### Stored Procedure for Insertion and Update
- Create a stored procedure for inserting or updating data. Example:

    ```sql
    delimiter //
    CREATE DEFINER =`root`@`%` PROCEDURE `introduce_values`()
    begin
   Insert into customer()
   values(11, "Alberto Gomes", "InovationX", "Alverto@Gomes.com", "890 Central Plaza, Suite 567", "Los Angeles", "USA");
    end //
    delimiter ;

    delimiter //
    CREATE DEFINER =`root`@`%` PROCEDURE `update_values`()
    begin
	UPDATE `adm`.`customer` set `contact_name` = 'Roberto Ernandes' WHERE (`customer_id` = '11');
    end //
     delimiter ;

- Exemple of how make a index:
    ```sql
    use adm;
    CREATE INDEX index1 ON adm.product (product_id);

- Create users with read-only access to a specific table:
    ```sql
    use adm;
    CREATE USER 'user_1'@'%' IDENTIFIED BY 'password123';
    GRANT SELECT ON product TO 'user_1'@'%';
    FLUSH PRIVILEGES;

- How to generate a backup:

1. Click on the option at the top that says server.

![screenshot.jpg](./rsc/screenshot.jpg)

2. Then click on the option that says export data.

3. Select the scheme you want to export.

4. Enter the options you need to export and click the button that says start.

5. Select where you want the file.

- How to resturate a backup:

1. Click on the option at the top that says file.

2. Then click on the option that says open sql script.

3. Select the file of the backup and execute the file