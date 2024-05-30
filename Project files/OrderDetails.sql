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
