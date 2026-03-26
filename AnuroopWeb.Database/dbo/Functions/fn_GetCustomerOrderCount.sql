CREATE FUNCTION fn_GetCustomerOrderCount (@CustomerId INT)
RETURNS TABLE
AS
RETURN
(
    SELECT COUNT(*) AS TotalOrders
    FROM Orders
    WHERE CustomerId = @CustomerId
);