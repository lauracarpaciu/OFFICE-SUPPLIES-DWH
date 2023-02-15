CREATE TABLE [dbo].[FactSales_audit] (
    [change_id]         INT              IDENTITY (1, 1) NOT NULL,
    [SalesKey]          SMALLINT         NOT NULL,
    [OrderKey]          INT              NULL,
    [CustomerKey]       INT              NULL,
    [SalesTheritoryKey] INT              NULL,
    [ProductKey]        INT              NULL,
    [Sales]             MONEY            NULL,
    [Quantity]          TINYINT          NULL,
    [Discount]          DECIMAL (18, 10) NULL,
    [Profit]            MONEY            NULL,
    [To_do]             NVARCHAR (50)    NULL,
    [discount_value]    DECIMAL (18)     NULL,
    [updated_at]        DATETIME         NOT NULL,
    [operation]         CHAR (3)         NOT NULL,
    PRIMARY KEY CLUSTERED ([change_id] ASC),
    CHECK ([operation]='INS' OR [operation]='DEL')
);
GO

