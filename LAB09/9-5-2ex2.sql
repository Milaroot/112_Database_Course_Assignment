SELECT A.T_id, A.T_name
FROM Teacher AS A LEFT OUTER JOIN Course AS B
ON A.T_id = B.T_id
WHERE B.T_id IS NULL
