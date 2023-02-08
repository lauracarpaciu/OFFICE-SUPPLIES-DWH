CREATE VIEW dbo.segment_qty
AS
SELECT SUM(FactSales.Quantity) as total, DimCustomer.Segment
FROM
FactSales
INNER JOIN
DimCustomer
ON
FactSales.CustomerKey=DimCustomer.CustomerKey
GROUP BY DimCustomer.Segment;
GO

