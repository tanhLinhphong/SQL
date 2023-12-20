--Lấy dữ liệu của bảng Contact có ContactID >= 00 và ContactID<=200
SELECT * FROM Person.Person 
WHERE BusinessEntityID>=100 AND BusinessEntityID <=200
--Lấy dữ liệu của bảng Contact có ContactID trong khoảng [100,200]
SELECT * FROM Person.Person 
WHERE BusinessEntityID BETWEEN 100 AND 200
--Lấy ra những Contact có LastName kết thúc bởi ký tự e
Select *FROM Person.Person
WHERE LastName LIKE '%e'
--Lấy ra những Contact có LastName bắt đầu bởi ký tự R hoặc A kết thúc bởi ký tự e
SELECT * FROM Person.Person
WHERE LastName LIKE '[RA]%e'
--Lấy ra những Contact có LastName có 4 ký tự bắt đầu bởi ký tự R hoặc A kết thúc bởi ký tự e
SELECT * FROM Person.Person
WHERE LastName LIKE '[RA]__e'
--Sử dụng INNER JOIN
SELECT Person.Person.* FROM Person.Person INNER JOIN HumanResources.Employee ON
       Person.Person.BusinessEntityID=HumanResources.Employee.BusinessEntityID
SELECT Title,COUNT(*) [Title Number]
FROM Person.Person
GROUP BY ALL Title
--GROUP BY với HAVING: mệnh đề HAVING sẽ lọc kết quả trong lúc được gộp nhóm--
SELECT Title, COUNT (*) [Title Number]
FROM Person.Person
GROUP BY ALL Title
HAVING Title LIKE 'Mr%'


CREATE TABLE PhongBan(
MaPB VARCHAR (7) PRIMARY KEY,
TenPB NVARCHAR (50),
)
GO 
INSERT INTO PhongBan(MaPB,TenPB)
       VALUES ('101','Phong1'),
	          ('102','Phong2'),
	          ('103','Phong3'),
	          ('104','Phong4'),
	          ('105','Phong5')
 GO
 CREATE TABLE NhanVien(
 MaNV VARCHAR(7) PRIMARY KEY,
 TenNV NVARCHAR(50) ,
 NgaySinh DATETIME,
 SoCMND CHAR (9),
 GioiTinh CHAR(1),
 DiaChi NVARCHAR(100),
 NgayVaoLam DATETIME,
 MAPB VARCHAR (7) FOREIGN KEY REFERENCES PhongBan(MaPB)
 )
GO
INSERT INTO NhanVien (MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,NgayVaoLam,MAPB)
VALUES (1,'Tuan','19990915',09897711,'M','Thanh Hoa','20220101',101),
       (2,'Linh','19980915',09896711,'F','Thanh Hoa','20220201',102),
	   (3,'Van','19980915',09896791,'F','Thanh Hoa','20220202',103),  
	   (4,'Khanh','19950515',09896791,'M','Thanh Hoa','20220202',104),
	   (5,'Van','19960915',09896791,'M','Thanh Hoa','20220201',105)
GO
CREATE TABLE LuongDA(
    MaDA VARCHAR(8) NOT NULL,
	MaNV VARCHAR(7) NOT NULL,
	NgayNhan DATETIME,
	SoTien MONEY,
	PRIMARY KEY(MaDA,MaNV),
	FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
)
GO
INSERT LuongDA (MaDA,MaDA,NgayNhan,SoTien)
               VALUES ('ABCD1',1,'20230406',230500),
                      ('ABCD2',2,'20230406',200000),
                      ('ABCD3',3,'20230406',990000),
                      ('ABCD4',4,'20230406',590000),
                      ('ABCD2',5,'20230406',290000)
GO
SELECT * FROM PhongBan
SELECT * FROM NhanVien
SELECT * FROM LuongDA
GO
--3
SELECT * FROM NhanVien WHERE GioiTinh LIKE 'F'
GO
--4
SELECT MaDA
FROM LuongDA;