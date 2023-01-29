CREATE TABLE [dbo].[FactSales] (
    [SalesKey]    SMALLINT      NOT NULL,
    [OrderKey]    NVARCHAR (50) NOT NULL,
    [CustomerKey] NVARCHAR (50) NOT NULL,
    [ProductKey]  NVARCHAR (50) NOT NULL,
    [Sales]       FLOAT (53)    NOT NULL,
    [Quantity]    TINYINT       NOT NULL,
    [Discount]    FLOAT (53)    NOT NULL,
    [Profit]      FLOAT (53)    NULL
);
GO

ALTER TABLE [dbo].[FactSales]
    ADD CONSTRAINT [FK_1] FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]);
GO

ALTER TABLE [dbo].[FactSales]
    ADD CONSTRAINT [FK_3] FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey]);
GO

ALTER TABLE [dbo].[FactSales]
    ADD CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED ([SalesKey] ASC);
GO

