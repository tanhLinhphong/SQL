CREATE DATABASE Lapp1
GO 
USE Lapp1
GO
CREATE TABLE Customer(
CustomerID INT PRIMARY KEY,
NAME NVARCHAR (30),
Address NVARCHAR (100),
Telephone VARCHAR (15),
Status VARCHAR (100)
)
GO
INSERT INTO Customer(CustomerID,NAME,Address,Telephone,Status)
            VALUES (1, 'PVTA', 'HN',99999, 'X'),
			       (2, 'NHC', 'Gold',88888, 'X'),
				   (3,'NTNL','NEU',777777,'X')
GO
CREATE TABLE Product (
	ProductID INT PRIMARY KEY,
	NAME NVARCHAR (30),
	Description NVARCHAR (30),
	Unit NVARCHAR (10),
	Price INT,
	Quantity INT,
	Status NVARCHAR (30)
)
INSERT INTO Product(ProductID,NAME,Description,Unit,Price,Quantity,Status)
            VALUES(1, 'Máy Tính T450', 'mới', 'chiếc', 1000, 20, 'In Stock'),
                  (2, 'Điện Thoại Nokia 5670', ' hot', 'chiếc', 200, 10, 'In Stock'),
                  (3, 'Máy In Samsung 450', ' ế', 'chiếc', 100, 15, 'In Stock'),
                  (4, 'Máy Tính Apple M1', ' hot', 'chiếc', 300, 23, 'In Stock'),
                  (5, 'Máy Tính Lenovo Legion 5', ' mới', 'chiếc', 240, 14, 'In Stock')
GO

CREATE TABLE Orders (
	OrderID INT PRIMARY KEY,
	CustomerID INT,
	OrderDate DATE,
	Status NVARCHAR (30)
	FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
)
INSERT INTO Orders(OrderID,CustomerID,OrderDate,Status)
            VALUES(15,5,'2023-5-5','X'),
			      (105,3,'2023-5-5','Y'),
				  (37,30,'2023-5-5','X')
GO

CREATE TABLE OrderDetails (
	OrderID INT,
	ProductID INT,
	Price INT,
	Quantity INT,
	PRIMARY KEY (OrderID, ProductID),
	FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
	FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
)
INSERT INTO OrderDetails(OrderID,ProductID,Price,Quantity)
            VALUES(123, 1, 1000, 1),
			      (623, 1, 1940, 2),
				  (323, 1, 1980, 3),
				  (723, 1, 1770, 4),
				  (613, 1, 1900, 5),
				  (143, 1, 1400, 6),
				  (133, 1, 1200, 7)
GO
SELECT * FROM Customer
SELECT * FROM Product
SELECT * FROM Orders
SELECT * FROM OrderDetails

--4a--
SELECT * FROM Customer
WHERE CustomerID IN (SELECT CustomerID FROM Orders)
--4b--
SELECT ProductID, NAME
FROM Product
--4c--
SELECT * FROM Orders
--5a--
SELECT * FROM Customer
ORDER BY NAME
--5b--
SELECT * FROM Product
ORDER BY Price DESC
--5c--

--6a--
SELECT DISTINCT COUNT(CustomerID) FROM Orders
-- 6b--
SELECT DISTINCT COUNT(ProductID) FROM Product
--6c--
SELECT OrderID, SUM(Price) AS TotalOrderPrice
FROM OrderDetails
GROUP BY OrderID