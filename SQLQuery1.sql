USE AdventureWorks2022
GO

SELECT * FROM HumanResources.Employee
SELECT * FROM HumanResources.Department WHERE DepartmentID > 15

SELECT DepartmentID, Name, GroupName FROM HumanResources.Department WHERE DepartmentID > 15

Go
DECLARE @deptID INT 
SELECT @deptID=12
SELECT DepartmentID,Name, GroupName FROM HumanResources.Department 
                    WHERE DepartmentID>= @deptID

Go
USE Northwind
GO
SELECT * FROM Categories
SELECT CategoryID, CategoryName, [Description] FROM Categories
SELECT EmployeeID, LastName, FirstName FROM Employees
SELECT TOP 1 * FROM Employees

SELECT @@LANGUAGE
SELECT @@VERSION
Go
SELECT * FROM Production.ProductCostHistory
SELECT SUM (StandardCost)FROM Production.ProductCostHistory
SELECT AVG (StandardCost)FROM Production.ProductCostHistory
SELECT MAX (StandardCost)FROM Production.ProductCostHistory
SELECT COUNT(*) AS TotalRecords FROM Production.ProductPhoto
SELECT GETDATE()
SELECT DATEPART(hh,GETDATE())
SELECT CONVERT(VarChar(50),GETDATE(),103)
SELECT DB_ID('AdventureWorks')
CREATE DATABASE EXAMPLE3
USE EXAMPLE3
CREATE TABLE Contacts
(MAilID VARCHAR(20),
Name NTEXT,
TelephoneNumber INT)
ALTER TABLE Contacts ADD Address NVARCHAR(50)
INSERT INTO Contacts values ('tahhh@gmail.com',N'PVTA',99999,N'HA NOI')
INSERT INTO Contacts values ('tahhh@gmail.com',N'PVTA',99999,N'HA NOI')
INSERT INTO Contacts values ('tahhh@gmail.com',N'PVTA',99999,N'HA NOI')
INSERT INTO Contacts values ('tahhh@gmail.com',N'PVTA',99999,N'HA NOI')

SELECT * FROM Contacts

DELETE FROM Contacts WHERE MailID='kkkkk@gmail.com'
UPDATE Contacts SET Name=N'PHAM Van Tuan Anh' WHERE MailID='abcd@gmaol.com'
CREATE LOGIN example3 WITH PASSWORD='1234'
CREATE USER example3 FROM LOGIN example3
REVOKE ALL ON Contacts FROM example3
GRANT SELECT ON Contacts TO example3


