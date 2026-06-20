-- Product staging dimension
-- Purpose: extract unique product master records from raw retail sales data.

CREATE TABLE IF NOT EXISTS public.stg_dim_product (
    product_id VARCHAR(250),
    sku VARCHAR(250),
    product_name VARCHAR(250)
);

INSERT INTO public.stg_dim_product (product_id, sku, product_name)
SELECT DISTINCT
    "Product ID",
    "SKU",
    "Product Name"
FROM public."1778602684784_retail_sales";

SELECT * FROM public.stg_dim_product;
