CREATE PARTITION SCHEME [sales_order_by_year_scheme]
    AS PARTITION [sales_order_by_year_function]
    TO ([salesorders_2014], [salesorders_2015], [salesorders_2016], [salesorders_2017], [PRIMARY]);
GO

