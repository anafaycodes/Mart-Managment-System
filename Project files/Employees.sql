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
