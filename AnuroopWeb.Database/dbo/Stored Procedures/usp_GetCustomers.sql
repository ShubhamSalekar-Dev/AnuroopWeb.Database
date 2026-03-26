
CREATE PROCEDURE usp_GetCustomers
AS
BEGIN
    SELECT * FROM Customers
    Order by Name desc;
END;