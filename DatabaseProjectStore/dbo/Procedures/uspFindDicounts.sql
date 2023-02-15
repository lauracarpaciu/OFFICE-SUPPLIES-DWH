CREATE PROCEDURE [dbo].[uspFindDicounts](@min_discount AS DECIMAL)
AS
BEGIN
    SELECT
        ProductKey,
        Discount
    FROM 
        dbo.FactSales
    WHERE
        Discount > @min_discount
    ORDER BY
        Discount;
END;
GO

