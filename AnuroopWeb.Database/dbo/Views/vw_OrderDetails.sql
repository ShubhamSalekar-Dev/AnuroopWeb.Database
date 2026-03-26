CREATE VIEW vw_OrderDetails
AS
SELECT 
    o.OrderId,
    c.Name AS CustomerName,
    p.ProductName,
    p.Price,
    o.Quantity,
    (p.Price * o.Quantity) AS TotalAmount,
    o.OrderDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerId = c.CustomerId
INNER JOIN Products p ON o.ProductId = p.ProductId;