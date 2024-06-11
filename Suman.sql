
-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    UnitPrice DECIMAL(10,2),
    UnitsInStock INT
);

-- Insert sample data into Products table
INSERT INTO Products (ProductID, ProductName, UnitPrice, UnitsInStock) 
VALUES
(1, 'T-Shirt', 20.99, 150),
(2, 'Jeans', 39.99, 100),
(3, 'Sneakers', 49.99, 200),
(4, 'Watch', 99.99, 50),
(5, 'Backpack', 29.99, 80),
(6, 'Dress', 59.99, 120),
(7, 'Sunglasses', 15.99, 180),
(8, 'Headphones', 79.99, 90),
(9, 'Laptop', 899.99, 30),
(10, 'Smartphone', 699.99, 70),
(11, 'Desk Lamp', 34.99, 40),
(12, 'Coffee Maker', 79.99, 60),
(13, 'Fitness Tracker', 49.99, 100),
(14, 'Running Shoes', 69.99, 120),
(15, 'Yoga Mat', 24.99, 150),
(16, 'Water Bottle', 9.99, 200),
(17, 'Bluetooth Speaker', 59.99, 80),
(18, 'Power Bank', 39.99, 100),
(19, 'Wireless Earbuds', 89.99, 50),
(20, 'External Hard Drive', 129.99, 70);

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(10),
    Country VARCHAR(255)
);

-- Insert sample data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) 
VALUES
(1, 'John Smith', 'John Smith', '123 Main St', 'New York', '10001', 'USA'),
(2, 'Jane Doe', 'Jane Doe', '456 Oak Ave', 'Los Angeles', '90001', 'USA'),
(3, 'Michael Johnson', 'Michael Johnson', '789 Elm St', 'Chicago', '60601', 'USA'),
(4, 'Emily Brown', 'Emily Brown', '321 Maple Ave', 'Houston', '77001', 'USA'),
(5, 'David Wilson', 'David Wilson', '567 Pine St', 'Miami', '33101', 'USA'),
(6, 'Sarah Martinez', 'Sarah Martinez', '876 Cedar Ave', 'Dallas', '75201', 'USA'),
(7, 'Robert Anderson', 'Robert Anderson', '234 Birch St', 'Atlanta', '30301', 'USA'),
(8, 'Jessica Taylor', 'Jessica Taylor', '987 Elmwood Ave', 'Boston', '02101', 'USA'),
(9, 'Daniel Thomas', 'Daniel Thomas', '543 Oakwood Ave', 'Seattle', '98101', 'USA'),
(10, 'Jennifer Garcia', 'Jennifer Garcia', '654 Cherry St', 'San Francisco', '94101', 'USA'),
(11, 'James Rodriguez', 'James Rodriguez', '789 Maplewood Ave', 'Philadelphia', '19101', 'USA'),
(12, 'Ashley Hernandez', 'Ashley Hernandez', '890 Walnut St', 'Phoenix', '85001', 'USA'),
(13, 'Christopher Martinez', 'Christopher Martinez', '432 Cedar Ave', 'Austin', '73301', 'USA'),
(14, 'Amanda Robinson', 'Amanda Robinson', '345 Pine Ave', 'San Diego', '92101', 'USA'),
(15, 'Matthew Clark', 'Matthew Clark', '876 Birchwood St', 'Denver', '80201', 'USA'),
(16, 'Laura Lewis', 'Laura Lewis', '123 Elmwood Ave', 'Portland', '97201', 'USA'),
(17, 'Kevin Lee', 'Kevin Lee', '456 Oakwood St', 'Las Vegas', '89101', 'USA'),
(18, 'Megan Walker', 'Megan Walker', '789 Maple St', 'Orlando', '32801', 'USA'),
(19, 'Brian Hall', 'Brian Hall', '234 Pine St', 'Charlotte', '28201', 'USA'),
(20, 'Stephanie Young', 'Stephanie Young', '567 Birchwood Ave', 'Tampa', '33601', 'USA');

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert sample data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) 
VALUES
(1, 1, '2024-06-01', 89.97),
(2, 2, '2024-06-02', 124.95),
(3, 3, '2024-06-03', 249.98),
(4, 4, '2024-06-04', 79.98),
(5, 5, '2024-06-05', 159.97),
(6, 6, '2024-06-06', 329.94),
(7, 7, '2024-06-07', 44.97),
(8, 8, '2024-06-08', 74.97),
(9, 9, '2024-06-09', 109.96),
(10, 10, '2024-06-10', 174.95),
(11, 11, '2024-06-11', 289.94),
(12, 12, '2024-06-12', 84.98),
(13, 13, '2024-06-13', 159.97),
(14, 14, '2024-06-14', 264.93),
(15, 15, '2024-06-15', 49.98),
(16, 16, '2024-06-16', 189.95),
(17, 17, '2024-06-17', 54.98),
(18, 18, '2024-06-18', 119.97),
(19, 19, '2024-06-19', 174.95),
(20, 20, '2024-06-20', 99.99);
SELECT * FROM Orders;
SELECT * FROM Customers;
SELECT * FROM Products;

