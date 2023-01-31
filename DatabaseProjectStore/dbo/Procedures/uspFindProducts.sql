CREATE PROCEDURE [dbo].[uspFindProducts](@min_list_price AS MONEY
    ,@max_list_price AS MONEY)
AS
BEGIN
    SELECT
    p.Product_Name, 
   c.Sub_CategoryName,
   s.Sales
   
FROM DimSubCategory c
 
INNER JOIN DimProduct p
        ON p.SubcategoryKey = c.SubcategoryKey
INNER JOIN  FactSales s
        ON s.ProductKey = p.ProductKey 

WHERE
      s.Sales >= @min_list_price AND
        s.Sales <= @max_list_price
    ORDER BY
        s.Sales;        
END;
GO

