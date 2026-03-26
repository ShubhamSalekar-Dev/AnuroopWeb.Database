CREATE TABLE [dbo].[Products] (
    [ProductId]   INT             IDENTITY (1, 1) NOT NULL,
    [ProductName] NVARCHAR (100)  NULL,
    [Price]       DECIMAL (10, 2) NULL,
    [IsActive]    BIT             DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC)
);

