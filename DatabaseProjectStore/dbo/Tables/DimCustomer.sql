CREATE TABLE [dbo].[DimCustomer] (
    [Row_ID]      SMALLINT      NOT NULL,
    [Country]     NVARCHAR (50) NOT NULL,
    [City]        NVARCHAR (50) NOT NULL,
    [State]       NVARCHAR (50) NOT NULL,
    [Postal_Code] INT           NOT NULL,
    [Region]      NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([Row_ID] ASC)
);


GO

