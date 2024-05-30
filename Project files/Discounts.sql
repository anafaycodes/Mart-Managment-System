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
