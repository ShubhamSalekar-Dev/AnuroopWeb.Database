CREATE TABLE [dbo].[Customers] (
    [CustomerId]  INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (100) NULL,
    [Email]       NVARCHAR (100) NULL,
    [CreatedDate] DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);

