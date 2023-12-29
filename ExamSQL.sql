CREATE DATABASE EmployeeDB
Go
USE EmployeeDB
Go

CREATE TABLE Department(
DepartID INT PRIMARY KEY,
DepartName VARCHAR(50) NOT NULL,
Description VARCHAR(100) NOT NULL
)
INSERT INTO Department(DepartID,DepartName,Description) 
      VALUES(1, 'DepartName2', 'Description 1'),
	         (2, 'DepartName2', 'Description2'),
			 (3, 'DepartName3', 'Description3'),
			 (4, 'DepartName4', 'Description4')


GO
CREATE TABLE Employee (
EmpCode CHAR(6) PRIMARY KEY,
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Birthday SMALLDATETIME NOT NULL,
Gender BIT DEFAULT 1,
Address VARCHAR(100),
DepartID INT FOREIGN KEY (DepartID) REFERENCES Department(DepartID),
Salary MONEY,
)
INSERT INTO Employee(EmpCode,LastName,Birthday,Gender,DepartID,Salary) 
      VALUES(01, 'FirstName1', 'LastName1', '1981-05-21', 1, 'Address1',1,3700),
	        (02, 'FirstName2', 'LastName2', '1991-06-01', 0, 'Address1',2,2800),
			(03, 'FirstName3', 'LastName3', '2001-07-31', 0, 'Address1',3,2000),
			(04, 'FirstName4', 'LastName4', '1971-04-11', 1, 'Address1',4,1500)
GO
--Hien thi--
SELECT*FROM Department
SELECT*FROM Employee
--Xoa Bang--
DROP TABLE Department
DROP TABLE Employee
--4--
Update Employee
SET Salary = Salary * 1.1
SELECT * FROM Employee
--5--
ALTER TABLE Employee
ADD CONSTRAINT CheckSalary Check (Salary > 0)