SELECT EM.Em_id, Em_name, Q1, Q2
FROM Employee2 AS EM, performance AS p
WHERE EM.Em_id = p.Em_id