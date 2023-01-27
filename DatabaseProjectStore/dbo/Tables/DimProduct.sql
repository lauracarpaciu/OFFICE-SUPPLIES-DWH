CREATE TABLE [dbo].[DimProduct] (
    [Row_ID]       SMALLINT       NOT NULL,
    [Product_ID]   NVARCHAR (50)  NOT NULL,
    [Product_Name] NVARCHAR (150) NOT NULL,
    CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED ([Row_ID] ASC)
);


GO

