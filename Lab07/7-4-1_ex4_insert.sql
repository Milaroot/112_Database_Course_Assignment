USE CompanyDB;

CREATE TABLE Employee_old (
    Em_id CHAR(5),
    Em_name NVARCHAR(10) NOT NULL,
    Em_dep NVARCHAR(10) NULL,
    Gender NCHAR(1),
    PRIMARY KEY(Em_id)
);

INSERT INTO Employee_old VALUES
('S0006', '六合', '銷售部', '女'),
('S0007', '七賢', '銷售部', '女'),
('S0008', '八德', '生產部', '男'),
('S0009', '九如', '生產部', '女'),
('S0010', '十全', '生產部', '男');



ALTER TABLE Employee
ADD Gender NCHAR(1) Default '男' WITH VALUES;


UPDATE Employee 
SET Gender = '女'
WHERE Em_name = '三多' OR Em_name = '五福';


INSERT INTO Employee
SELECT * FROM Employee_old;