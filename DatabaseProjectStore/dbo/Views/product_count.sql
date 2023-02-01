CREATE VIEW dbo.product_count
AS
SELECT 
c.Sub_CategoryName,
COUNT(*) product_count
FROM DimSubCategory c
INNER JOIN DimProduct p
        ON p.SubcategoryKey = c.SubcategoryKey
INNER JOIN  FactSales s
        ON s.ProductKey = p.ProductKey
GROUP BY
c.Sub_CategoryName
HAVING
    COUNT(*) > 20;
GO

