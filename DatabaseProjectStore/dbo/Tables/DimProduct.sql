CREATE TABLE [dbo].[DimProduct] (
    [ProductKey]          INT            NOT NULL,
    [ProductAlternateKey] NVARCHAR (50)  NOT NULL,
    [SubcategoryKey]      TINYINT        NOT NULL,
    [Product_Name]        NVARCHAR (100) NOT NULL
);
GO

ALTER TABLE [dbo].[DimProduct]
    ADD CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED ([ProductKey] ASC);
GO


CREATE UNIQUE NONCLUSTERED INDEX [Index_1]
    ON [dbo].[DimProduct]([ProductAlternateKey] ASC);
GO


ALTER TABLE [dbo].[DimProduct]
    ADD CONSTRAINT [FK_5] FOREIGN KEY ([SubcategoryKey]) REFERENCES [dbo].[DimSubCategory] ([SubcategoryKey]);
GO

