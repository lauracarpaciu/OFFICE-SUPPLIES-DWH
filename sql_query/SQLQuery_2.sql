
SELECT
qty,
Sub_CategoryName,
FIRST_VALUE(Sub_CategoryName) OVER(
    ORDER BY qty
)lowest_sales_volume
FROM
dbo.qty_subcategories;


SELECT
qty,
Sub_CategoryName,
LAST_VALUE(Sub_CategoryName) OVER(
    ORDER BY qty
    RANGE BETWEEN 
            UNBOUNDED PRECEDING AND 
            UNBOUNDED FOLLOWING
) highest_sales_value
FROM
dbo.qty_subcategories;


