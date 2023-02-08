CREATE VIEW dbo.total_sales
AS
SELECT DimSalesTerritory.[State],SUM((( Sales*Quantity))) AS total
FROM DimSalesTerritory
INNER JOIN
FactSales
on FactSales.SalesTheritoryKey=DimSalesTerritory.DimSalesTheritoryKey
group by DimSalesTerritory.[State];
GO

