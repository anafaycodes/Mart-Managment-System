Create database Mart_Management_System;
use Mart_Management_System;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Price DECIMAL(10, 2),
    Quantity INT,
    Category INT,
    FOREIGN KEY (Category) references Categories (CategoryID) 
    );
    
    -- Insert data into Products table    
INSERT INTO Products (ProductID, ProductName, Price, Quantity, Category)
VALUES
(1, 'Smartphone', 699.99, 50, 1),
(2, 'Laptop', 999.99, 30, 1),
(3, 'Fiction Book', 19.99, 100, 2),
(4, 'Non-Fiction Book', 29.99, 80, 2),
(5, 'T-Shirt', 14.99, 200, 3),
(6, 'Jeans', 39.99, 150, 3),
(7, 'Microwave', 89.99, 40, 4),
(8, 'Refrigerator', 499.99, 20, 4);    
    
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255)
);

-- Insert data into Categories table
INSERT INTO Categories (CategoryID, CategoryName)
VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing'),
(4, 'Home Appliances');

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    Country VARCHAR(100)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Address, City, Country)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123 Elm Street', 'New York', 'USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Oak Avenue', 'Los Angeles', 'USA'),
(3, 'Sam', 'Brown', 'sam.brown@example.com', '789 Pine Road', 'Chicago', 'USA');

CREATE TABLE Discounts (
    DiscountID INT PRIMARY KEY,
    DiscountName VARCHAR(100),
    DiscountType VARCHAR(50),
    DiscountValue DECIMAL(5, 2),
    StartDate DATE,
    EndDate DATE
);

INSERT INTO Discounts (DiscountID, DiscountName, DiscountType, DiscountValue, StartDate, EndDate)
VALUES
(1, 'Spring Sale', 'Percentage', 10.00, '2024-05-01', '2024-05-31'),
(2, 'Summer Special', 'Flat', 5.00, '2024-06-01', '2024-06-30');

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Title VARCHAR(100),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- Insert data into Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, Salary)
VALUES
(1, 'Alice', 'Johnson', 'Manager', '2020-01-15', 60000.00),
(2, 'Bob', 'Lee', 'Sales Associate', '2019-03-10', 40000.00),
(3, 'Charlie', 'Kim', 'Clerk', '2021-06-01', 35000.00);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 1, 1, 699.99),
(2, 1, 3, 1, 19.99),
(3, 2, 2, 1, 999.99),
(4, 2, 5, 1, 14.99),
(5, 3, 4, 1, 29.99),
(6, 3, 6, 1, 39.99);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(1, 1, '2024-05-01', 719.98),
(2, 2, '2024-05-02', 1049.98),
(3, 3, '2024-05-03', 54.98);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(100),
    SupplierID INT,
    EmployeeID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Payments (PaymentID, OrderID, PaymentDate, Amount, PaymentMethod, SupplierID, EmployeeID)
VALUES
(1, 1, '2024-05-01', 719.98, 'Credit Card', 1, 1),
(2, 2, '2024-05-02', 1049.98, 'PayPal', 1, 2),
(3, 3, '2024-05-03', 54.98, 'Credit Card', 2, 3);

CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY,
    OrderID INT,
    ShipmentDate DATE,
    ShippedQuantity INT,
    ShippingCompany VARCHAR(100),
    TrackingNumber VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Shipments (ShipmentID, OrderID, ShipmentDate, ShippedQuantity, ShippingCompany, TrackingNumber)
VALUES
(1, 1, '2024-05-02', 2, 'FastShip', 'TRACK12345'),
(2, 2, '2024-05-03', 2, 'QuickDelivery', 'TRACK67890'),
(3, 3, '2024-05-04', 2, 'ExpressShip', 'TRACK11223');

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255),
    ContactName VARCHAR(255),
    Phone VARCHAR(20),
    Product INT,
    FOREIGN KEY (Product) references Products (ProductID)
);

-- Insert data into Suppliers table
INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Phone, Product)
VALUES
(1, 'Tech Supplier Inc.', 'James Bond', '555-1234', 1),
(2, 'Book Supplier Ltd.', 'Hermione Granger', '555-5678', 3),
(3, 'Clothing Supplier Co.', 'Bruce Wayne', '555-8765', 5);

-- Muhammad, BSE-23F-098
SELECT * FROM Products WHERE Price > 50;
SELECT * FROM Customers WHERE City = 'New York';
SELECT * FROM Products;
SELECT * FROM Customers; 
SELECT Products.ProductID, Products.ProductName, Products.Price
FROM Products
JOIN Categories ON Products.Category = Categories.CategoryID
WHERE Categories.CategoryName = 'Electronics';
SELECT COUNT(*) AS ProductCount FROM Products;
SELECT Category, COUNT(*) AS ProductCount
FROM Products
GROUP BY Category;
SELECT SupplierID, COUNT(Product) AS ProductCount
FROM Suppliers
GROUP BY SupplierID
HAVING COUNT(Product) > 1;
SELECT * FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products);
SELECT * FROM Products
ORDER BY Price DESC
LIMIT 5;
SELECT AVG(Quantity) AS AverageQuantity FROM OrderDetails;
SELECT DISTINCT Customers.CustomerID, Customers.FirstName, Customers.LastName
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
JOIN Categories ON Products.Category = Categories.CategoryID
WHERE Categories.CategoryName = 'Books';
SELECT DISTINCT PaymentMethod FROM Payments;

-- Abdul Nafay, BSE-23F-087

SELECT * FROM Orders;
SELECT * FROM Orders WHERE OrderDate BETWEEN '2024-05-01' AND '2024-05-31';
SELECT AVG(Price) AS AveragePrice FROM Products;
SELECT CustomerID, SUM(TotalAmount) AS TotalSales
FROM Orders
GROUP BY CustomerID;
SELECT OrderDetails.OrderDetailID, Products.ProductName, OrderDetails.Quantity, OrderDetails.UnitPrice
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID;
SELECT * FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);
SELECT * FROM Orders
WHERE OrderID IN (SELECT OrderID FROM OrderDetails WHERE ProductID = 1);
SELECT SUM (TotalAmount) AS TotalRevenue FROM Orders;
SELECT Categories.CategoryName
FROM Categories
WHERE CategoryID = (SELECT Category FROM Products
                    GROUP BY Category
                    ORDER BY COUNT(*) DESC
                    LIMIT 1);
SELECT EmployeeID, FirstName, LastName, TIMESTAMPDIFF(YEAR, HireDate, CURDATE()) AS YearsOfService
FROM Employees
WHERE TIMESTAMPDIFF(YEAR, HireDate, CURDATE()) > (SELECT AVG(TIMESTAMPDIFF(YEAR, HireDate, CURDATE())) FROM Employees);
SELECT CustomerID, COUNT(DISTINCT PaymentMethod) AS DistinctPaymentMethods
FROM Orders
JOIN Payments ON Orders.OrderID = Payments.OrderID
GROUP BY CustomerID
HAVING COUNT(DISTINCT PaymentMethod) > 1;                
SELECT ProductID, ProductName, Price,
CASE
    WHEN Price > 50 THEN 'Above $50'
    ELSE 'Below or Equal $50'
END AS PriceCategory
FROM Products;
    
				
-- Haseeb, BSE-23F-097

SELECT * FROM Employees;
SELECT * FROM Categories;
SELECT * FROM Employees WHERE HireDate > '2020-01-01';
SELECT MAX(Salary) AS MaxSalary FROM Employees;
SELECT EmployeeID, SUM(Amount) AS TotalPayments
FROM Payments
GROUP BY EmployeeID;
SELECT Payments.PaymentID, Orders.OrderID, Customers.FirstName, Customers.LastName, Payments.Amount
FROM Payments
JOIN Orders ON Payments.OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
SELECT * FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);
SELECT * FROM Suppliers
WHERE Product IN (SELECT ProductID FROM Products WHERE Price > 100);
SELECT AVG(Quantity) AS AverageQuantity FROM OrderDetails;
SELECT Customers.City, AVG(Orders.TotalAmount) AS AvgOrderAmount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.City;
SELECT Orders.OrderID, OrderDetails.ProductID, OrderDetails.Quantity, OrderDetails.UnitPrice
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE Customers.Country = 'USA';
SELECT CustomerID, COUNT(DISTINCT PaymentMethod) AS DistinctPaymentMethods
FROM Orders
JOIN Payments ON Orders.OrderID = Payments.OrderID
GROUP BY CustomerID
HAVING COUNT(DISTINCT PaymentMethod) > 1;
SELECT * FROM Products
WHERE ProductID NOT IN (SELECT ProductID FROM OrderDetails);

-- Yahya, BSE-23F-095

SELECT * FROM Suppliers;
SELECT * FROM Shipments;
SELECT * FROM Employees WHERE HireDate > '2020-01-01';
SELECT SUM(Quantity) AS TotalQuantity FROM Products;
SELECT MIN(TotalAmount) AS MinOrderAmount FROM Orders;
SELECT * FROM Products
WHERE ProductID NOT IN (SELECT ProductID FROM OrderDetails);
SELECT * FROM Orders
WHERE TotalAmount > (SELECT AVG(TotalAmount) FROM Orders);
SELECT ProductID, ProductName, Price,
CASE
    WHEN Price > 50 THEN 'Above $50'
    ELSE 'Below or Equal $50'
END AS PriceCategory
FROM Products;
SELECT Customers.City, AVG(Orders.TotalAmount) AS AvgOrderAmount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.City;
SELECT Categories.CategoryName
FROM Categories
WHERE CategoryID = (SELECT Category FROM Products
                    GROUP BY Category
                    ORDER BY COUNT(*) DESC
                    LIMIT 1);
SELECT EmployeeID, FirstName, LastName, TIMESTAMPDIFF(YEAR, HireDate, CURDATE()) AS YearsOfService
FROM Employees;                    
SELECT * FROM Suppliers
WHERE Product IN (SELECT ProductID FROM Products WHERE Price > 100);






