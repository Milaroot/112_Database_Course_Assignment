USE LAB08

SELECT S_id, AVG(Quan) AS AverageQuan FROM Sales
GROUP BY S_id
HAVING AVG(Quan) >= 70

SELECT S_id, COUNT(*) AS totalSales FROM Sales
GROUP BY S_id
HAVING COUNT(*) >= 2

