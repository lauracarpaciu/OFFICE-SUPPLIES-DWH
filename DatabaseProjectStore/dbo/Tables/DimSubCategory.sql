CREATE TABLE [dbo].[DimSubCategory] (
    [SubcategoryKey]          TINYINT       NOT NULL,
    [SubcategoryAlternateKey] TINYINT       NOT NULL,
    [CategoryName]            NVARCHAR (50) NOT NULL,
    [Sub_CategoryName]        NVARCHAR (50) NOT NULL,
    [CategoryKey]             TINYINT       NOT NULL
);
GO

ALTER TABLE [dbo].[DimSubCategory]
    ADD CONSTRAINT [PK_DimSubCategory] PRIMARY KEY CLUSTERED ([SubcategoryKey] ASC);
GO

