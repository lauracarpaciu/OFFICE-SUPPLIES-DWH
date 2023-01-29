CREATE TABLE [dbo].[DimProduct] (
    [ProductKey]   NVARCHAR (50)  NOT NULL,
    [Category]     NVARCHAR (50)  NOT NULL,
    [Sub_Category] NVARCHAR (50)  NOT NULL,
    [Product_Name] NVARCHAR (150) NOT NULL
);
GO

ALTER TABLE [dbo].[DimProduct]
    ADD CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED ([ProductKey] ASC);
GO

