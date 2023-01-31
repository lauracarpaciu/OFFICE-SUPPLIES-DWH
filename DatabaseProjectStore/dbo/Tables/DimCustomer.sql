CREATE TABLE [dbo].[DimCustomer] (
    [CustomerKey]          INT           NOT NULL,
    [CustomerAlternateKey] NVARCHAR (50) NOT NULL,
    [Customer_Name]        NVARCHAR (50) NOT NULL,
    [Segment]              NVARCHAR (50) NOT NULL
);
GO

ALTER TABLE [dbo].[DimCustomer]
    ADD CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC);
GO


CREATE UNIQUE NONCLUSTERED INDEX [Index_1]
    ON [dbo].[DimCustomer]([CustomerAlternateKey] ASC);
GO


CREATE NONCLUSTERED INDEX [nidx_customer_name]
    ON [dbo].[DimCustomer]([Customer_Name] ASC, [Segment] ASC);
GO

