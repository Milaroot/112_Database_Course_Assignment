CREATE VIEW Student_Total_Grades AS
SELECT Course_select.Stu_id, Student.stu_name, SUM(Course_select.Grade) as Total_Grade
FROM Course_select
JOIN Student ON Course_select.Stu_id = Student.stu_id
GROUP BY Course_select.Stu_id, Student.stu_name;
