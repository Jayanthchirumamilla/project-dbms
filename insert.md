INSERT INTO Products (ProductName, Description, Price, Category) VALUES
('Elegant Wooden Chair', 'A beautifully crafted wooden chair perfect for any dining room.', 120.00, 'Chair'),
('Modern Desk', 'A sleek and modern desk for your office needs.', 250.00, 'Desk'),
('Comfort Sofa', 'A comfortable and stylish sofa, perfect for any living room.', 500.00, 'Sofa'),
('Vintage Coffee Table', 'A vintage-style coffee table made of reclaimed wood.', 220.00, 'Table'),
('Standing Lamp', 'A modern standing lamp for contemporary lighting solutions.', 90.00, 'Lamp');

INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, Address) VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Maple Street, Anytown'),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak Avenue, Othertown'),
('Michael', 'Brown', 'michael.brown@example.com', '555-666-7777', '789 Pine Road, Sometown'),
('Emily', 'Johnson', 'emily.johnson@example.com', '444-555-6666', '101 Birch Lane, New City'),
('David', 'Wilson', 'david.wilson@example.com', '222-333-4444', '202 Elm Street, Oldtown');

INSERT INTO Orders (CustomerID, OrderDate, ShippingAddress) VALUES
(1, '2024-03-25', '123 Maple Street, Anytown'),
(2, '2024-03-26', '456 Oak Avenue, Othertown'),
(3, '2024-03-27', '789 Pine Road, Sometown'),
(4, '2024-03-28', '101 Birch Lane, New City'),
(5, '2024-03-29', '202 Elm Street, Oldtown');


INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price) VALUES
(1, 1, 2, 120.00),
(1, 3, 1, 500.00),
(2, 2, 1, 250.00),
(3, 4, 1, 220.00),
(4, 5, 2, 90.00);