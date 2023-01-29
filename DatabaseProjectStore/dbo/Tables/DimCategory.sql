CREATE TABLE [dbo].[DimCategory] (
    [Row_ID]   SMALLINT      NOT NULL,
    [Category] NVARCHAR (50) NOT NULL,
    ALTER TABLE [dbo].[DimCategory]
    ADD CONSTRAINT [PK_DimCategory] PRIMARY KEY CLUSTERED ([CategoryKey] ASC);
);


GO

