CREATE TABLE department 
(
    DepartmentId    INT NOT NULL AUTO INCREMENT, 
    Title           VARCHAR (100) NOT NULL,

    PRIMARY KEY (DepartmentId)
);

CREATE TABLE product
(
    ProductId       INT NOT NULL AUTO INCREMENT, 
    Title           VARCHAR (100) NOT NULL,
    PriceInPence    INT NOT NULL,
    SKU             CHAR (8) NOT NULL
    DepartmentId    INT NOT NULL, 

    PRIMARY KEY (ProductId),
    FOREIGN KEY (DepartmentId) REFERENCES department (DeparmentId)
);

CREATE TABLE customer
(
    NameId          INT NOT NULL AUTO INCREMENT, 
    Email           CHAR (8) NOT NULL
    PhoneNumber     INT NOT NULL, 

    PRIMARY KEY (CustomerId),
    FOREIGN KEY (DepartmentId) REFERENCES department (DeparmentId)
);
