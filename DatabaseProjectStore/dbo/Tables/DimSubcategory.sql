CREATE TABLE [dbo].[DimSubcategory] (
    [Row_ID]   SMALLINT      NOT NULL,
    [Category] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_DimSubcategory] PRIMARY KEY CLUSTERED ([Row_ID] ASC)
);


GO

