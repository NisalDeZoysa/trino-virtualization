CREATE DATABASE dataV;
USE dataV;

CREATE TABLE customer (
    custkey varchar(30),
    name VARCHAR(50),
    address VARCHAR(100),
    nationkey varchar(50),
    phone VARCHAR(20),
    acctbal varchar(40),
    mktsegment VARCHAR(10)
);

Drop table customer;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer_data.csv'
INTO TABLE customer
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(custkey, name, address, nationkey, phone, acctbal, mktsegment, comment);