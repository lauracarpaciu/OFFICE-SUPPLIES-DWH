CREATE TABLE [dbo].[DimOrder] (
    [OrderKey]   NVARCHAR (50) NOT NULL,
    [Order_Date] DATE          NOT NULL,
    [Ship_Date]  DATE          NOT NULL,
    [Ship_Mode]  NVARCHAR (50) NULL
);
GO

ALTER TABLE [dbo].[DimOrder]
    ADD CONSTRAINT [PK_DimOrder] PRIMARY KEY CLUSTERED ([OrderKey] ASC);
GO

ALTER TABLE [dbo].[DimOrder]
    ADD CONSTRAINT [FK_2] FOREIGN KEY ([Order_Date]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO

ALTER TABLE [dbo].[DimOrder]
    ADD CONSTRAINT [FK_4] FOREIGN KEY ([Ship_Date]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO

