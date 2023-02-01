CREATE VIEW dbo.avg_product_price
AS
SELECT
c.Sub_CategoryName,
CAST(ROUND(AVG(s.Sales),2) AS DEC(10,2))
avg_product_price
FROM DimSubCategory c
INNER JOIN DimProduct p
        ON p.SubcategoryKey = c.SubcategoryKey
INNER JOIN  FactSales s
        ON s.ProductKey = p.ProductKey
GROUP BY
c.Sub_CategoryName
HAVING
    AVG(s.Sales) > 500;
GO

