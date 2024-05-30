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
