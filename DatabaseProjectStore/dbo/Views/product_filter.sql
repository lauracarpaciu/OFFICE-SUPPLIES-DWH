
CREATE VIEW dbo.product_filter
as
SELECT ProductKey, Product_Name
FROM dbo.DimProduct
WHERE ProductKey IN
(SELECT dbo.FactSales.ProductKey
FROM dbo.FactSales
WHERE Sales > 200);
GO

