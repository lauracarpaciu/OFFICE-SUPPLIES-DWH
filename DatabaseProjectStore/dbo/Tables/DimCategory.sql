CREATE TABLE [dbo].[DimCategory] (
    [Row_ID]   SMALLINT      NOT NULL,
    [Category] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_DimCategory] PRIMARY KEY CLUSTERED ([Row_ID] ASC)
);


GO

