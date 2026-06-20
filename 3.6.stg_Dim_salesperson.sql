-- Salesperson Dimension
--1. Eda
SELECT "Salesperson ID", "Salesperson Department"
FROM public."1778602684784_retail_sales";
--2. Create stg_dim_salesperson
CREATE TABLE stg_dim_salesperson(
    salesperson_id VARCHAR(250),
    salesperson_department VARCHAR(250)
);
--3. Insert data
INSERT INTO public.stg_dim_salesperson
SELECT DISTINCT "Salesperson ID", "Salesperson Department"
FROM public."1778602684784_retail_sales";
--4. Check data
SELECT * FROM public.stg_dim_salesperson;