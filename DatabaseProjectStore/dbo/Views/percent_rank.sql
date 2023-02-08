CREATE VIEW dbo.percent_rank
AS

SELECT
qty,
Sub_CategoryName,
    PERCENT_RANK() OVER (
        ORDER BY qty DESC
    ) percent_rank

FROM dbo.qty_subcategories;
GO

