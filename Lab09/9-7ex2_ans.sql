SELECT *
FROM Stu_grade
WHERE db =
(
    SELECT MAX(db)
    FROM Stu_grade
)
