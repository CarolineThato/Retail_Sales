-- Promotion staging dimension
-- Purpose: extract unique promotion details from raw retail sales data.

CREATE TABLE IF NOT EXISTS public.stg_dim_promotion (
    promotion_id VARCHAR(250),
    promotion_name VARCHAR(250)
);

INSERT INTO public.stg_dim_promotion (promotion_id, promotion_name)
SELECT DISTINCT
    "Promotion ID",
    "Promotion Name"
FROM public."1778602684784_retail_sales";

SELECT * FROM public.stg_dim_promotion;