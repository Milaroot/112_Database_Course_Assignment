CREATE VIEW Top_Students AS
SELECT TOP 3 Student.stu_id, Student.stu_name, Course_select.Grade
FROM Student
JOIN Course_select ON Student.stu_id = Course_select.Stu_id
JOIN Course ON Course_select.C_id = Course.C_id
WHERE Course.C_name = '資料庫系統'
ORDER BY Course_select.Grade DESC;
