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


    
