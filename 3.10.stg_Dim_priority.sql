-- Priority Dimension
--1. Eda
SELECT "Priority"
FROM public."1778602684784_retail_sales";
--2. Create stg_dim_priority
CREATE TABLE stg_dim_priority(
    priority VARCHAR(250)
);
--3. Insert data
INSERT INTO public.stg_dim_priority
SELECT DISTINCT "Priority"
FROM public."1778602684784_retail_sales";
--4. Check data
SELECT * FROM public.stg_dim_priority;