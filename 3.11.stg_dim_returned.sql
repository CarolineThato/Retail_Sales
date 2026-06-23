-- Returned staging dimension
-- Purpose: extract unique return status values from raw retail sales data.

CREATE TABLE IF NOT EXISTS public.stg_dim_returned (
    returned VARCHAR(250)
);

INSERT INTO public.stg_dim_returned (returned)
SELECT DISTINCT
    "Returned"
FROM public."1778602684784_retail_sales";

SELECT * FROM public.stg_dim_returned;