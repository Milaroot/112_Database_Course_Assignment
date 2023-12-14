USE LAB08

SELECT COUNT(*) AS totalPeople FROM Employee

SELECT COUNT(*) AS totalSales FROM Sales

SELECT AVG(Quan) AS AverageQuan FROM Sales
GROUP BY S_id

SELECT SUM(Quan) AS totalP0005 FROM Sales
WHERE P_id = 'P0005'

SELECT MAX(Quan) AS MaxQuanP0005 FROM Sales
WHERE P_id = 'P0005'
