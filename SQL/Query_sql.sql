-- Create a new database named Company
CREATE DATABASE Company;

-- Create Users table
CREATE TABLE Company.Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    Email VARCHAR(100)
);

-- Create Orders table
CREATE TABLE Company.Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    ProductID INT,
    OrderDate DATE,
    FOREIGN KEY (UserID) REFERENCES Company.Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Company.Products(ProductID)
);

-- Create Products table
CREATE TABLE Company.Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2) 
);

-- Select all records from the Users, Orders, and Products tables in the Company database
Select * from Company.Users;
Select * from Company.Orders;
Select * from Company.Products; 