-- Returned Dimension
--1. Eda
SELECT "Returned"
FROM public."1778602684784_retail_sales";
--2. Create stg_dim_returned
CREATE TABLE stg_dim_returned(
    returned VARCHAR(250)
);
--3. Insert data 
INSERT INTO public.stg_dim_returned
SELECT DISTINCT "Returned"
FROM public."1778602684784_retail_sales";
--4. Check data
SELECT * FROM public.stg_dim_returned;