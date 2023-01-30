CREATE TABLE [dbo].[DimOrder] (
    [OrderKey]          INT           NOT NULL,
    [OrderAlternateKey] NVARCHAR (50) NOT NULL,
    [Order_Date]        DATE          NOT NULL,
    [Ship_Date]         DATE          NOT NULL,
    [Ship_Mode]         NVARCHAR (50) NOT NULL
);
GO

ALTER TABLE [dbo].[DimOrder]
    ADD CONSTRAINT [PK_DimOrder] PRIMARY KEY CLUSTERED ([OrderKey] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [Index_1]
    ON [dbo].[DimOrder]([OrderAlternateKey] ASC);
GO


ALTER TABLE [dbo].[DimOrder]
    ADD CONSTRAINT [FK_6] FOREIGN KEY ([Order_Date]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO


ALTER TABLE [dbo].[DimOrder]
    ADD CONSTRAINT [FK_7] FOREIGN KEY ([Ship_Date]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO

