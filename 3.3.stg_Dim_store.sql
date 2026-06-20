-- Store staging dimension
-- Purpose: extract unique store information from raw retail sales data.

CREATE TABLE IF NOT EXISTS public.stg_dim_store (
    store_id VARCHAR(250),
    store_name VARCHAR(250),
    store_type VARCHAR(250)
);

INSERT INTO public.stg_dim_store (store_id, store_name, store_type)
SELECT DISTINCT
    "Store ID",
    "Store Name",
    "Store Type"
FROM public."1778602684784_retail_sales";

SELECT * FROM public.stg_dim_store;