-- Product Dimension
--1. Eda
SELECT "Product ID", "SKU", "Product Name"
FROM public."1778602684784_retail_sales";
--2. Create stg_dim_product
CREATE TABLE stg_dim_product(
    product_id VARCHAR(250),
    sku VARCHAR(250),
    product_name VARCHAR(250)
);
--3. Insert data 
INSERT INTO public.stg_dim_product
SELECT DISTINCT "Product ID", "SKU", "Product Name"
FROM public."1778602684784_retail_sales";
--4. Check data 
SELECT * FROM public.stg_dim_product;
