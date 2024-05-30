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
