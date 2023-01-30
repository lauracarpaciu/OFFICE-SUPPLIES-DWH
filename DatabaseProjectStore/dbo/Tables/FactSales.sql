CREATE TABLE [dbo].[FactSales] (
    [SalesKey]          SMALLINT     NOT NULL,
    [OrderKey]          INT          NULL,
    [CustomerKey]       INT          NULL,
    [SalesTheritoryKey] INT          NULL,
    [ProductKey]        INT          NULL,
    [Sales]             MONEY        NULL,
    [Quantity]          TINYINT      NULL,
    [Discount]          DECIMAL (18) NULL,
    [Profit]            MONEY        NULL
);
GO

ALTER TABLE [dbo].[FactSales]
    ADD CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED ([SalesKey] ASC);
GO


ALTER TABLE [dbo].[FactSales]
    ADD CONSTRAINT [FK_1] FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]);
GO


ALTER TABLE [dbo].[FactSales]
    ADD CONSTRAINT [FK_2] FOREIGN KEY ([OrderKey]) REFERENCES [dbo].[DimOrder] ([OrderKey]);
GO


ALTER TABLE [dbo].[FactSales]
    ADD CONSTRAINT [FK_3] FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey]);
GO


ALTER TABLE [dbo].[FactSales]
    ADD CONSTRAINT [FK_4] FOREIGN KEY ([SalesTheritoryKey]) REFERENCES [dbo].[DimSalesTerritory] ([DimSalesTheritoryKey]);
GO

