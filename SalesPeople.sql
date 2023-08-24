CREATE DATABASE SalesPeople;
CREATE TABLE SalesPeople
(
Snum INT PRIMARY KEY,
Sname VARCHAR (255) UNIQUE,
City VARCHAR (255),
Comm DECIMAL (4,2)
);
INSERT INTO SalesPeople (Snum, Sname, City, Comm)
VALUES 
     (1001,'Peel', 'London',0.12),
     (1002,'Serres', 'San Jose', 0.13),
     (1004,'Motika', 'London', 0.11),
     (1007,'Rifkin','Barcelona', 0.15),
     (1003,'Axelrod', 'New York', 0.10);
SELECT * FROM SalesPeople;
SELECT COUNT(*) AS CountOfSalespeople
FROM SalesPeople
WHERE Sname LIKE 'a%' OR 'A%';
SELECT COUNT(*) AS NumberOfSalespeople
FROM SalesPeople
WHERE City = 'New York';
SELECT
    (SELECT COUNT(*) FROM SalesPeople WHERE City = 'London') AS NumberOfSalespeopleInLondon,
    (SELECT COUNT(*) FROM SalesPeople WHERE City = 'Paris') AS NumberOfSalespeopleInParis;




