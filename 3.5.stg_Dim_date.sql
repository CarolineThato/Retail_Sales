-- Date staging dimension
-- Purpose: extract distinct date fields from raw retail sales data for later transformation.

CREATE TABLE IF NOT EXISTS public.stg_dim_date (
    purchase_date VARCHAR(250),
    ship_date VARCHAR(250),
    return_date VARCHAR(250)
);

INSERT INTO public.stg_dim_date (purchase_date, ship_date, return_date)
SELECT DISTINCT
    "Purchase Date",
    "Ship Date",
    "Return Date"
FROM public."1778602684784_retail_sales";

SELECT * FROM public.stg_dim_date;