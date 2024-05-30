# Mart Management System

## Overview

The **Mart Management System** is a comprehensive database project designed to manage various aspects of a retail mart. This system includes tables and data related to **products**, **categories**, **customers**, **discounts**, **employees**, **orders**, **order details**, **payments**, **shipments**, and **suppliers**.

## Database Schema

### Tables and Relationships

1. **Products**
    - `ProductID` (Primary Key)
    - `ProductName`
    - `Price`
    - `Quantity`
    - `Category` (Foreign Key referencing `Categories` table)

2. **Categories**
    - `CategoryID` (Primary Key)
    - `CategoryName`

3. **Customers**
    - `CustomerID` (Primary Key)
    - `FirstName`
    - `LastName`
    - `Email`
    - `Address`
    - `City`
    - `Country`

4. **Discounts**
    - `DiscountID` (Primary Key)
    - `DiscountName`
    - `DiscountType`
    - `DiscountValue`
    - `StartDate`
    - `EndDate`

5. **Employees**
    - `EmployeeID` (Primary Key)
    - `FirstName`
    - `LastName`
    - `Title`
    - `HireDate`
    - `Salary`

6. **OrderDetails**
    - `OrderDetailID` (Primary Key)
    - `OrderID` (Foreign Key referencing `Orders` table)
    - `ProductID` (Foreign Key referencing `Products` table)
    - `Quantity`
    - `UnitPrice`

7. **Orders**
    - `OrderID` (Primary Key)
    - `CustomerID` (Foreign Key referencing `Customers` table)
    - `OrderDate`
    - `TotalAmount`

8. **Payments**
    - `PaymentID` (Primary Key)
    - `OrderID` (Foreign Key referencing `Orders` table)
    - `PaymentDate`
    - `Amount`
    - `PaymentMethod`
    - `SupplierID` (Foreign Key referencing `Suppliers` table)
    - `EmployeeID` (Foreign Key referencing `Employees` table)

9. **Shipments**
    - `ShipmentID` (Primary Key)
    - `OrderID` (Foreign Key referencing `Orders` table)
    - `ShipmentDate`
    - `ShippedQuantity`
    - `ShippingCompany`
    - `TrackingNumber`

10. **Suppliers**
    - `SupplierID` (Primary Key)
    - `SupplierName`
    - `ContactName`
    - `Phone`
    - `Product` (Foreign Key referencing `Products` table)

## Data Insertion

### Products
```sql
INSERT INTO Products (ProductID, ProductName, Price, Quantity, Category)
VALUES
(1, 'Smartphone', 699.99, 50, 1),
(2, 'Laptop', 999.99, 30, 1),
(3, '
