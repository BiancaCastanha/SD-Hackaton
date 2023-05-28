CREATE DATABASE ADVENTUREWORKS;

USE ADVENTUREWORKS;

CREATE TABLE AdventureWorks_Territories (
    SalesTerritoryKey INT PRIMARY KEY,
    Region VARCHAR(15),
    Country VARCHAR(15),
    Continent VARCHAR(15)
);

CREATE TABLE AdventureWorks_Product_Categories (
    ProductCategoryKey INT PRIMARY KEY,
    CategoryName VARCHAR(15)
);

CREATE TABLE AdventureWorks_Product_Subcategories (
    ProductSubcategoryKey INT PRIMARY KEY,
    SubcategoryName VARCHAR(20),
    ProductCategoryKey INT,
    FOREIGN KEY (ProductCategoryKey)
        REFERENCES AdventureWorks_Product_Categories (ProductCategoryKey)
);

CREATE TABLE AdventureWorks_Products (
    ProductKey INT PRIMARY KEY,
    ProductSubcategoryKey INT,
    ProductSKU VARCHAR(15),
    ProductName VARCHAR(50),
    ModelName VARCHAR(50),
    ProductDescription VARCHAR(300),
    ProductColor VARCHAR(10),
    ProductSize VARCHAR(5),
    ProductStyle CHAR,
    ProductCost FLOAT,
    ProductPrice FLOAT,
    FOREIGN KEY (ProductSubcategoryKey)
        REFERENCES AdventureWorks_Product_Subcategories (ProductSubcategoryKey)
);

CREATE TABLE AdventureWorks_Customers (
    CustomerKey INT PRIMARY KEY,
    Prefix VARCHAR(5),
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    BirthDate DATE,
    MaritalStatus CHAR,
    Gender CHAR,
    EmailAddress VARCHAR(300),
    AnnualIncome VARCHAR(30),
    TotalChildren INT,
    EducationLevel VARCHAR(50),
    Occupation VARCHAR(30),
    HomeOwner CHAR
);

CREATE TABLE AdventureWorks_Calendar (
    Date DATE PRIMARY KEY NOT NULL
);

CREATE TABLE AdventureWorks_Returns (
    ReturnDate DATE PRIMARY KEY,
    TerritoryKey INT,
    ProductKey INT,
    ReturnQuality INT,
    FOREIGN KEY (TerritoryKey)
        REFERENCES AdventureWorks_Territories (SalesTerritoryKey),
    FOREIGN KEY (ProductKey)
        REFERENCES AdventureWorks_Products (ProductKey)
);

CREATE TABLE AdventureWorks_Sales (
    OrderDate DATE,
    StockDate DATE,
    OrderNumber VARCHAR(10) PRIMARY KEY,
    ProductKey INT,
    CustomerKey INT,
    TerritoryKey INT,
    OrderLineItem INT,
    OrderQuality INT,
    FOREIGN KEY (OrderDate)
        REFERENCES AdventureWorks_Calendar (Date),
    FOREIGN KEY (ProductKey)
        REFERENCES AdventureWorks_Products (ProductKey),
    FOREIGN KEY (CustomerKey)
        REFERENCES AdventureWorks_Customers (CustomerKey),
    FOREIGN KEY (TerritoryKey)
        REFERENCES AdventureWorks_Territories (SalesTerritoryKey)
);