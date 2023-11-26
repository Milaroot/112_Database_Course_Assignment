USE CompanyDB;

CREATE TABLE Employee
(
    Em_id CHAR(5),
    Em_name NVARCHAR(10) NOT NULL,
    Em_dep NVARCHAR(10) NULL,
    PRIMARY KEY(Em_id)
);