CREATE FUNCTION fn_GetTotalOrderAmount (@OrderId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @Total DECIMAL(10,2);

    SELECT @Total = (p.Price * o.Quantity)
    FROM Orders o
    INNER JOIN Products p ON o.ProductId = p.ProductId
    WHERE o.OrderId = @OrderId;

    RETURN ISNULL(@Total, 0);
END;