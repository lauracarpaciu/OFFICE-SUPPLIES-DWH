CREATE VIEW dbo.ship
AS
SELECT FactSales.SalesKey,FactSales.OrderKey,FactSales.Quantity
FROM FactSales
WHERE
FactSales.OrderKey IN(
    SELECT DimOrder.OrderKey
    FROM DimOrder 
    WHERE DimOrder.Ship_Mode = 'Standard Class'
)
GO

