# Sports_club_db

<p align="center"> <img src="DB_ERD.png"> </p>

 📝 Project Description

Employee Management Database for a Sports Club

Club Employee Database is a relational database project designed to organize and manage employee information within a sports club. The database stores employee details, financial records, operational information, and contact information in separate, related tables.

The project uses Microsoft SQL Server and SQL to demonstrate relational database design, primary and foreign keys, one-to-one relationships, table creation, and data retrieval using JOIN queries.

 🎯 Project Objectives 

The main objective of this project is to apply and practice the SQL concepts I have learned through a practical database project using Microsoft SQL Server.

1- Organize data into separate tables and apply relational database design principles.

2- Create and manage primary and foreign keys (PK & FK) and implement one-to-one relationships.

3- Retrieve and combine data using SQL JOIN queries while improving my understanding of data integrity and SQL query writing.

SQL Queries
select Club_Employees.Employee_ID,Club_Employees.Employee_Name,Financial_Data.Basic_Salary ,Operational_Data.Job_Position,Employee_Contact_Information.Phone_Number
from Club_Employees
right join Financial_Data 
on Club_Employees.Employee_ID = Financial_Data.Employee_ID
join Operational_Data
on Financial_Data.Employee_ID = Operational_Data.Employee_ID
join Employee_Contact_Information
on Operational_Data.Employee_ID = Employee_Contact_Information.Employee_ID










Project Results 
















⚠️Note: All data, including names, numbers, and locations, are fictional and created for learning purposes only.
