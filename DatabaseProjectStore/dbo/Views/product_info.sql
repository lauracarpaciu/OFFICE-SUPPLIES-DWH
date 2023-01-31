CREATE VIEW dbo.product_info
AS
SELECT
    p.Product_Name, 
   c.Sub_CategoryName,
   s.Sales
   
FROM DimSubCategory c
 
INNER JOIN DimProduct p
        ON p.SubcategoryKey = c.SubcategoryKey
INNER JOIN  FactSales s
        ON s.ProductKey = p.ProductKey ;
GO

