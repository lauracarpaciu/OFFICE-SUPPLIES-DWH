CREATE TABLE [dbo].[DimSalesTerritory] (
    [DimSalesTheritoryKey] INT           NOT NULL,
    [Country]              NVARCHAR (50) NOT NULL,
    [City]                 NVARCHAR (50) NOT NULL,
    [State]                NVARCHAR (50) NOT NULL,
    [Postal_Code]          INT           NOT NULL,
    [Region]               NVARCHAR (50) NOT NULL
);
GO

ALTER TABLE [dbo].[DimSalesTerritory]
    ADD CONSTRAINT [PK_DimSalesTerritory] PRIMARY KEY CLUSTERED ([DimSalesTheritoryKey] ASC);
GO

