-- CREATE VIEW dbo.total_sales_by_year
-- AS
-- SELECT COUNT(FactSales.SalesKey) AS fact_sales,DimDate.TheYear
-- FROM
-- FactSales
-- INNER JOIN
-- DimOrder
-- ON
-- FactSales.OrderKey=DimOrder.OrderKey
-- INNER JOIN 
-- DimDate
-- ON 
-- DimOrder.Order_Date=dimdate.DateKey
-- GROUP BY
-- dimdate.TheYear;


CREATE VIEW dbo.total_subcategories
AS
SELECT COUNT(DimSubCategory.Sub_CategoryName) as count,DimSubCategory.Sub_CategoryName
FROM  FactSales
INNER JOIN
DimProduct
ON
FactSales.ProductKey=DimProduct.ProductKey
INNER JOIN
DimSubCategory
ON
DimProduct.SubcategoryKey=DimSubCategory.SubcategoryKey
GROUP BY DimSubCategory.Sub_CategoryName;
GO

