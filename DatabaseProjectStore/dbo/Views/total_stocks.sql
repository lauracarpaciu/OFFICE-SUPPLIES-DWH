CREATE VIEW dbo.total_stocks
AS
SELECT
-- p.Product_Name, 
c.Sub_CategoryName,
SUM(s.Quantity) total_stocks 
FROM DimSubCategory c
INNER JOIN DimProduct p
        ON p.SubcategoryKey = c.SubcategoryKey
INNER JOIN  FactSales s
        ON s.ProductKey = p.ProductKey
GROUP BY
c.Sub_CategoryName,
p.Product_Name
HAVING
SUM(s.Quantity)>20;
GO

