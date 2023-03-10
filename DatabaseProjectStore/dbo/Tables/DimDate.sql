CREATE TABLE [dbo].[DimDate] (
    [DateKey]             DATE          NOT NULL,
    [TheDay]              INT           NULL,
    [TheDaySuffix]        CHAR (2)      NULL,
    [TheDayName]          NVARCHAR (30) NULL,
    [TheDayOfWeek]        INT           NULL,
    [TheDayOfWeekInMonth] TINYINT       NULL,
    [TheDayOfYear]        INT           NULL,
    [IsWeekend]           INT           NOT NULL,
    [TheWeek]             INT           NULL,
    [TheISOweek]          INT           NULL,
    [TheFirstOfWeek]      DATE          NULL,
    [TheLastOfWeek]       DATE          NULL,
    [TheWeekOfMonth]      TINYINT       NULL,
    [TheMonth]            INT           NULL,
    [TheMonthName]        NVARCHAR (30) NULL,
    [TheFirstOfMonth]     DATE          NULL,
    [TheLastOfMonth]      DATE          NULL,
    [TheFirstOfNextMonth] DATE          NULL,
    [TheLastOfNextMonth]  DATE          NULL,
    [TheQuarter]          INT           NULL,
    [TheFirstOfQuarter]   DATE          NULL,
    [TheLastOfQuarter]    DATE          NULL,
    [TheYear]             INT           NULL,
    [TheISOYear]          INT           NULL,
    [TheFirstOfYear]      DATE          NULL,
    [TheLastOfYear]       DATE          NULL,
    [IsLeapYear]          BIT           NULL,
    [Has53Weeks]          INT           NOT NULL,
    [Has53ISOWeeks]       INT           NOT NULL,
    [MMYYYY]              CHAR (6)      NULL,
    [Style101]            CHAR (10)     NULL,
    [Style103]            CHAR (10)     NULL,
    [Style112]            CHAR (8)      NULL,
    [Style120]            CHAR (10)     NULL
);
GO

ALTER TABLE [dbo].[DimDate]
    ADD CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED ([DateKey] ASC);
GO

