USE CompanyDB;

CREATE TABLE Sales
(
    Em_id CHAR(5),
    P_id CHAR(5),
    SalesNumber INT NOT NULL,
    PRIMARY KEY(Em_id, P_id),
    FOREIGN KEY(Em_id) REFERENCES Employee(Em_id),
    FOREIGN KEY(P_id) REFERENCES Product(P_id),
);