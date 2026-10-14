--- simple data

INSERT INTO Club_Employees                              
VALUES 
(1, 'Hary Welain', 'Male', 'Club Management'),
(2, 'Tom Trver', 'Male', 'Club Management'),
(3, 'Dina Mlah', 'Female', 'Club Management'),
(4, 'Bob Boney', 'Male', 'Club Management'),
(5, 'Hazen Frank', 'Male', 'Club Management'),
(6, 'Milta Alex', 'Female', 'Club Management'),
(7, 'Mohammed Bader', 'Male', 'Club Management'),
(8, 'Frank Marlen', 'Male', 'Club Services Staff');

INSERT INTO Employee_Contact_Information
VALUES
(1, 'hary.welain47@example.com', '055214783', '053681924', 'https://maps.google.com/?q=11.0101,10.1010'),
(2, 'tom.trver82@example.com', '056739214', '054217683', 'https://maps.google.com/?q=10.1101,11.0011'),
(3, 'dina.mlah31@example.com', '050928471', '055738216', 'https://maps.google.com/?q=11.0010,10.1101'),
(4, 'bob.boney65@example.com', '054817263', '050492718', 'https://maps.google.com/?q=10.1011,11.0100'),
(5, 'hazen.frank29@example.com', '053674829', '056218394', 'https://maps.google.com/?q=11.1001,10.0110'),
(6, 'milta.alex74@example.com', '055928361', '054736182', 'https://maps.google.com/?q=10.0111,11.1000'),
(7, 'mohammed.bader53@example.com', '056381927', '055492716', 'https://maps.google.com/?q=11.0110,10.1001'),
(8, 'frank.marlen38@example.com', '050716294', '053829174', 'https://maps.google.com/?q=10.1100,11.0010');



INSERT INTO Financial_Data                            
VALUES  
(1, 25000, 7000, 2000, 5000, 39000),
(2, 21000, 6000, 1500, 4000, 32500),
(3, 18000, 5000, 1500, 3500, 28000),
(4, 17000, 5000, 1000, 3000, 26000),
(5, 16000, 4500, 1000, 2500, 24000),
(6, 15000, 4500, 1500, 2500, 23500),
(7, 14000, 4000, 1000, 2000, 21000),
(8, 9000, 2000, 500, 1000, 12500)



INSERT INTO Operational_Data                           
VALUES 
(1, 'Hary Welain', 'Club President'),
(2, 'Tom Trver', 'Vice President'),
(3, 'Dina Mlah', 'Finance Manager'),
(4, 'Bob Boney', 'Facilities Manager'),
(5, 'Hazen Frank', 'Club Services Manager'),
(6, 'Milta Alex', 'Media & Social Affairs Manager'),
(7, 'Mohammed Bader', 'Clubs & Teams Manager'),
(8, 'Frank Marlen', 'Maintenance Supervisor');



--- SQL QUERIES

-- RIGHT JOIN 


SELECT
    Club_Employees.Employee_ID,
    Club_Employees.Employee_Name,
    Financial_Data.Basic_Salary,
    Operational_Data.Job_Position,
    Employee_Contact_Information.Phone_Number
FROM Club_Employees
RIGHT JOIN Financial_Data
    ON Club_Employees.Employee_ID = Financial_Data.Employee_ID
JOIN Operational_Data
    ON Financial_Data.Employee_ID = Operational_Data.Employee_ID
JOIN Employee_Contact_Information
    ON Operational_Data.Employee_ID = Employee_Contact_Information.Employee_ID;


-- ORDER BY 
  
SELECT
    Employee_ID,
    Employee_Name,
    Employee_Gender,
    Employee_Department
FROM Club_Employees
ORDER BY Employee_Department;

-- WHERE
SELECT * FROM Financial_Data
WHERE Basic_Salary > 20000


