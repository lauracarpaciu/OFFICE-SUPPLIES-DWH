CREATE VIEW dbo.total_sales_by_year
AS
SELECT COUNT(FactSales.SalesKey) AS fact_sales,DimDate.TheYear
FROM
FactSales
INNER JOIN
DimOrder
ON
FactSales.OrderKey=DimOrder.OrderKey
INNER JOIN 
DimDate
ON 
DimOrder.Order_Date=dimdate.DateKey
GROUP BY
dimdate.TheYear;
GO

