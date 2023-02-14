CREATE PROCEDURE uspFindQty(@min_qty AS int)
AS
BEGIN
    SELECT
        Quantity,
        Sales
    FROM 
        dbo.FactSales
    WHERE
        Quantity >= @min_qty
    ORDER BY
        Quantity;
END;
GO

