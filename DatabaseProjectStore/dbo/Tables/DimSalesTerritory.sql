CREATE TABLE [dbo].[DimSalesTerritory] (
    [DimSalesTheritoryKey] INT           NOT NULL,
    [Country]              NVARCHAR (50) NULL,
    [City]                 NVARCHAR (50) NULL,
    [State]                NVARCHAR (50) NULL,
    [Postal_Code]          INT           NULL,
    [Region]               NVARCHAR (50) NULL
);
GO

ALTER TABLE [dbo].[DimSalesTerritory]
    ADD CONSTRAINT [PK_DimSalesTerritory] PRIMARY KEY CLUSTERED ([DimSalesTheritoryKey] ASC);
GO

