USE LAB08

SELECT S_id, P_id, Quan AS ASCQuan FROM Sales
ORDER BY Quan ASC

SELECT S_id, P_id, Quan AS DESCQuan FROM Sales
ORDER BY Quan DESC

SELECT S_id AS ASC_S_id, P_id, Quan AS ASCQuan FROM Sales
ORDER BY S_id ASC, Quan ASC
