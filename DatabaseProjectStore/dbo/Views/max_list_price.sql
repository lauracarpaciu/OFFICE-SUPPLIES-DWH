CREATE VIEW dbo. max_list_price
AS
SELECT
c.Sub_CategoryName,
MAX(s.Sales) max_list_price
FROM DimSubCategory c
INNER JOIN DimProduct p
        ON p.SubcategoryKey = c.SubcategoryKey
INNER JOIN  FactSales s
        ON s.ProductKey = p.ProductKey
GROUP BY
c.Sub_CategoryName
HAVING 
    MAX(s.Sales) > 1000;
GO

