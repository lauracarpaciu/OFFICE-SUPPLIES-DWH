CREATE TABLE [dbo].[Customer] (
    [CustomerKey]   INT           NOT NULL,
    [Customer_Name] NVARCHAR (50) NULL
);
GO

ALTER TABLE [dbo].[Customer]
    ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC);
GO

ALTER TABLE [dbo].[Customer]
    ADD CONSTRAINT [FK_8] FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]);
GO

