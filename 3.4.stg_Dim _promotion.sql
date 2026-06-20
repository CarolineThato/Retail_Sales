-- Promotion Dimension
--1. Eda
SELECT "Promotion ID", "Promotion Name"
FROM public."1778602684784_retail_sales";
--2. Create stg_dim_promotion
CREATE TABLE stg_dim_promotion(
    promotion_id VARCHAR(250),
    promotion_name VARCHAR(250)
);
--3. Insert data
INSERT INTO public.stg_dim_promotion
SELECT DISTINCT "Promotion ID", "Promotion Name"
FROM public."1778602684784_retail_sales";
--4. Check data
SELECT * FROM public.stg_dim_promotion;