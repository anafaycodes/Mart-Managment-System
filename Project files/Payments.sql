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
