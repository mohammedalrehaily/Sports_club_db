CREATE DATABASE Qwex_Club;

USE QWEX_Club;

-- 1. Main Employee Table
CREATE TABLE Club_Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(225),
    Employee_Gender VARCHAR(50),
    Employee_Department VARCHAR(225)
);

ALTER TABLE Club_Employees
ADD CONSTRAINT UQ_main_inofrmations_Employee_Name
UNIQUE (Employee_Name);


-- 2. Employee Contact Information Table
CREATE TABLE Employee_Contact_Information (
    Employee_ID INT PRIMARY KEY,
    Email VARCHAR(225),
    Phone_Number VARCHAR(20),
    Emergency_Number VARCHAR(20),
    Employee_Location VARCHAR(500),

    CONSTRAINT FK_Employee_Contact_Information
        FOREIGN KEY (Employee_ID)
        REFERENCES Club_Employees(Employee_ID)
);


-- 3. Financial Information Table
CREATE TABLE Financial_Data (
    Employee_ID INT PRIMARY KEY,
    Basic_Salary INT,
    Allowances INT,
    Commission INT,
    Bonuses INT,
    Total_Salary INT,

    CONSTRAINT FK_Financial_Data
        FOREIGN KEY (Employee_ID)
        REFERENCES Club_Employees(Employee_ID)
);


-- 4. Operational Information Table
CREATE TABLE Operational_Data (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(225),
    Job_Position VARCHAR(225),

    CONSTRAINT FK_Operational_Data_Employee_ID
        FOREIGN KEY (Employee_ID)
        REFERENCES Club_Employees(Employee_ID),

    CONSTRAINT FK_Operational_Data_Employee_Name
        FOREIGN KEY (Employee_Name)
        REFERENCES Club_Employees(Employee_Name)
);
