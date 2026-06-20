-- Store Dimension
--1. Eda
SELECT "Store ID", "Store Name", "Store Type"
FROM public."1778602684784_retail_sales";
--2. Create stg_dim_store
CREATE TABLE stg_dim_store(
    store_id VARCHAR(250),
    store_name VARCHAR(250),
    store_type VARCHAR(250)
);
--3. Insert data 
INSERT INTO public.stg_dim_store
SELECT DISTINCT "Store ID", "Store Name", "Store Type"
FROM public."1778602684784_retail_sales";
--4. Check data
SELECT * FROM public.stg_dim_store;