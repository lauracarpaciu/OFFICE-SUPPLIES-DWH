CREATE VIEW [dbo].[min_list_price]
AS
SELECT
c.Sub_CategoryName,
MIN(s.Sales) min_list_price
FROM DimSubCategory c
INNER JOIN DimProduct p
        ON p.SubcategoryKey = c.SubcategoryKey
INNER JOIN  FactSales s
        ON s.ProductKey = p.ProductKey
GROUP BY
c.Sub_CategoryName
HAVING 
    MIN(s.Sales) > 10;
GO

