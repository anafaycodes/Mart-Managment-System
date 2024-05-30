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

