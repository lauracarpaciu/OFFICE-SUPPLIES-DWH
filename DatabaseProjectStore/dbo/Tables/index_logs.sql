CREATE TABLE [dbo].[index_logs] (
    [log_id]     INT       IDENTITY (1, 1) NOT NULL,
    [event_data] XML       NOT NULL,
    [changed_by] [sysname] NOT NULL,
    PRIMARY KEY CLUSTERED ([log_id] ASC)
);
GO

