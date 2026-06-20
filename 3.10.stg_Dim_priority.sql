-- Priority staging dimension
-- Purpose: extract unique shipping priority values from raw retail sales data.

CREATE TABLE IF NOT EXISTS public.stg_dim_priority (
    priority VARCHAR(250)
);

INSERT INTO public.stg_dim_priority (priority)
SELECT DISTINCT
    "Priority"
FROM public."1778602684784_retail_sales";

SELECT * FROM public.stg_dim_priority;