-- Salesperson staging dimension
-- Purpose: extract unique salesperson records from raw retail sales data.

CREATE TABLE IF NOT EXISTS public.stg_dim_salesperson (
    salesperson_id VARCHAR(250),
    salesperson_department VARCHAR(250)
);

INSERT INTO public.stg_dim_salesperson (salesperson_id, salesperson_department)
SELECT DISTINCT
    "Salesperson ID",
    "Salesperson Department"
FROM public."1778602684784_retail_sales";

SELECT * FROM public.stg_dim_salesperson;