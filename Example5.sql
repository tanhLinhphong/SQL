IF EXISTS (SELECT *FROM sys.databases WHERE Name LIKE 'Example5')
DROP DATABASE Example5
GO
CREATE DATABASE Example5
GO
USE Example5
GO
CREATE TABLE LopHoc(
    MaLopHoc INT PRIMARY KEY IDENTITY,
	TenLopHoc VARCHAR(10)
)
GO 
SELECT * FROM LopHoc
GO
INSERT INTO LopHoc(TenLopHoc) VALUES('T2308M')
SELECT *FROM LopHoc
UPDATE LopHoc SET TenLopHoc='T2308M'
WHERE MaLopHoc =1002
DELETE FROM LopHoc WHERE MaLopHoc=1002
GO

DROP TABLE SinhVien
CREATE TABLE Sinhvien(
MaSV int PRIMARY KEY,
TenSV nvarchar(250),
ClassCode int,
CONSTRAINT fk FOREIGN KEY (ClassCode) REFERENCES LopHoc(MaLopHoc)
)
GO 
INSERT INTO Sinhvien(MaSV,TenSV,ClassCode) VALUES (1,'Minh',5);
INSERT INTO Sinhvien(MaSV,TenSV,ClassCode) VALUES (3,'Minh',1004);
INSERT INTO Sinhvien(MaSV,TenSV,ClassCode) VALUES (1,'Minh',1007),(16,'Hai',1008);
SELECT * FROM SinhVien
SELECT * FROM LopHoc
GO
