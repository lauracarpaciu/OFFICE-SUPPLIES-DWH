CREATE TABLE [dbo].[DimCategory] (
    [CategoryKey]          TINYINT       NOT NULL,
    [CategoryAlternateKey] TINYINT       NOT NULL,
    [CategoryName]         NVARCHAR (20) NULL
);
GO

ALTER TABLE [dbo].[DimCategory]
    ADD CONSTRAINT [PK_DimCategory] PRIMARY KEY CLUSTERED ([CategoryKey] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [Index_1]
    ON [dbo].[DimCategory]([CategoryAlternateKey] ASC);
GO

