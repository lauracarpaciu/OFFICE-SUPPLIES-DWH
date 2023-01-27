CREATE TABLE [dbo].[FactSales] (
    [Row_ID]     SMALLINT      NOT NULL,
    [Order_ID]   NVARCHAR (50) NOT NULL,
    [Order_Date] DATE          NOT NULL,
    [Ship_Date]  DATE          NOT NULL,
    [Ship_Mode]  NVARCHAR (50) NOT NULL,
    [Sales]      FLOAT (53)    NOT NULL,
    [Quantity]   TINYINT       NOT NULL,
    [Discount]   FLOAT (53)    NOT NULL,
    [Profit]     FLOAT (53)    NULL,
    CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED ([Row_ID] ASC)
);


GO

