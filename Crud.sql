SELECT 
    Orders.OrderID,
    Customers.FirstName,
    Customers.LastName,
    Customers.Email,
    Products.ProductName,
    Products.Description,
    OrderDetails.Quantity,
    OrderDetails.Price,
    Orders.OrderDate,
    Orders.ShippingAddress
    
    FROM OrderDetails
    INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
    INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
    WHERE OrderDetails.OrderID = 1

;


Select * from Products
where Products.ProductID = 1;


INSERT INTO Products (ProductName, Description, Price, Category) VALUES('Elegant Plastic Chair', 'A beautifully crafted plastic chair perfect for any dining room.', 80.00, 'Chair');


Delete from Products
where Products.ProductID = 6;

