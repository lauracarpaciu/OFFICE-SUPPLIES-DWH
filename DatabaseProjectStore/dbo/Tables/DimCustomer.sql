CREATE TABLE [dbo].[DimCustomer] (
    [CustomerKey]   NVARCHAR (50) NOT NULL,
    [Customer_Name] NVARCHAR (50) NULL,
    [Segment]       NVARCHAR (50) NULL,
    [Country]       NVARCHAR (50) NULL,
    [City]          NVARCHAR (50) NULL,
    [State]         NVARCHAR (50) NULL,
    [Postal_Code]   INT           NULL,
    [Region]        NVARCHAR (50) NULL
);
GO

ALTER TABLE [dbo].[DimCustomer]
    ADD CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC);
GO

