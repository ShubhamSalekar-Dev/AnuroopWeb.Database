CREATE PROCEDURE usp_GetOrdersByCustomer
    @CustomerId INT
AS
BEGIN
    SELECT o.OrderId, c.Name, p.ProductName, o.Quantity, o.OrderDate
    FROM Orders o
    INNER JOIN Customers c ON o.CustomerId = c.CustomerId
    INNER JOIN Products p ON o.ProductId = p.ProductId
    WHERE o.CustomerId = @CustomerId;
END;