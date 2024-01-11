CREATE VIEW Em_view2 AS
SELECT Employee.Em_id, Employee.Em_name, Comp_dep.Comp_dep_name
FROM Employee
JOIN Comp_dep ON Employee.Em_code = Comp_dep.Comp_dep_code;
