CREATE DATABASE Sp2
GO
USE  Sp2
GO
CREATE TABLE Maker (
MakerID INT PRIMARY KEY,
Maker_Name NVARCHAR(100),
Address NVARCHAR(50),
Telephone INT,
)
INSERT INTO Maker(MakerID,Maker_Name,Address,Telephone)
            VALUES(123,'ASUS','USA',999889),
			      (133,'DELL','USA',999889),
				  (144,'LENOVO','CHINA',999449)
DROP TABLE Maker
SELECT * FROM Maker
GO

CREATE TABLE ProductList2(
ProductID INT PRIMARY KEY,
ProductName NVARCHAR(100),
Describe NVARCHAR(100),
Unit NVARCHAR(100),
Price MONEY,
Amount INT,
)
INSERT INTO ProductList2(ProductID,ProductName,Describe,Unit,Price,Amount)
       VALUES(001,N'Máy tính T540',N'Hàng Nhập Cũ',N'Chiếc',1000,10),
	         (002,N'Điện Thoại NOKIA5670',N'Hàng Hot',N'Chiếc',200,200),
			 (003,N'Máy In Samsung450',N'Máy in đang loại bình',N'Chiếc',100,10),
			 (004,N'Redmi Note 12',N'Hàng Nhập Cũ',N'Chiếc',50,100),
			 (005,N'Black Shark 6',N'Hàng Nhập Mới',N'Chiếc',200,150)
SELECT * FROM  ProductList2
DROP TABLE ProductList2
GO
--4a--
SELECT  Maker_Name FROM Maker
--4b--
SELECT ProductName FROM ProductList2 
--5a--
SELECT Maker_Name FROM Maker
ORDER BY Maker_Name DESC
--5b--
SELECT *FROM ProductList2
ORDER BY Price DESC
--5c--
SELECT * FROM Maker
WHERE Maker_Name = 'ASUS'
--5d--
SELECT * FROM ProductList2
WHERE Amount <'11'
--5e
SELECT FROM