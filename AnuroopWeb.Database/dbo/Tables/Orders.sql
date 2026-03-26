CREATE TABLE [dbo].[Orders] (
    [OrderId]    INT      IDENTITY (1, 1) NOT NULL,
    [CustomerId] INT      NULL,
    [ProductId]  INT      NULL,
    [Quantity]   INT      NULL,
    [OrderDate]  DATETIME DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([OrderId] ASC),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId])
);

