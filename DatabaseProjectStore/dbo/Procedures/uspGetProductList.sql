CREATE  PROC uspGetProductList(
    @model_year SMALLINT
) AS 
BEGIN
    DECLARE @product_list VARCHAR(MAX);

    SET @product_list = '';

    SELECT
        @product_list = @product_list + Product_Name 
                        + CHAR(10)
    FROM 
        dbo.DimProduct
    WHERE
        SubcategoryKey = @model_year
    ORDER BY 
        Product_Name;

    PRINT @product_list;
END;
GO

