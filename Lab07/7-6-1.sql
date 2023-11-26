USE CompanyDB;

CREATE TABLE Costumer (
    Costumer_id CHAR(5),
    Costumer_name NVARCHAR(10) NOT NULL,
    Phone NVARCHAR(20) NULL,
    Fax NVARCHAR(20) NULL,
    PRIMARY KEY(Costumer_id)
);

CREATE TABLE Product (
    P_id CHAR(5),
    P_name NVARCHAR(10) NOT NULL,
    Price INT NOT NULL,
    PRIMARY KEY(P_id)
);



CREATE TABLE Order_file (
    Order_id CHAR(5),
    Order_date DATETIME NOT NULL,
    Costumer_id CHAR(5) NOT NULL,
    PRIMARY KEY(Order_id),
    FOREIGN KEY(Costumer_id) REFERENCES Costumer ON UPDATE NO ACTION ON DELETE NO ACTION
);



CREATE TABLE Order_detail (
    Order_id CHAR(5),
    P_id CHAR(5),
    OrderAmount INT NOT NULL,
    PRIMARY KEY(Order_id, P_id),
    FOREIGN KEY(Order_id) REFERENCES Order_file ON UPDATE NO ACTION ON DELETE NO ACTION,
    FOREIGN KEY(P_id) REFERENCES Product ON UPDATE NO ACTION ON DELETE NO ACTION
);