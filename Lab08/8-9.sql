USE LAB08

SELECT S_id, COUNT(*) AS totalSales FROM Sales
GROUP BY S_id

SELECT S_id, AVG(Quan) AS AverageQuan FROM Sales
GROUP BY S_id

SELECT P_id, COUNT(*) AS totalSalesPeople FROM Sales
GROUP BY P_id
ORDER BY P_id DESC

SELECT P_id, COUNT(*) AS totalSalesPeople, MAX(Quan) AS MaxQuan FROM Sales
GROUP BY P_id
ORDER BY P_id ASC

SELECT P_id, COUNT(*) AS totalSalesPeople, AVG(Quan) AS AverageQuan FROM Sales
GROUP BY P_id
ORDER BY P_id ASC
