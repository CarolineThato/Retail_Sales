-- Payment method staging dimension
-- Purpose: extract unique payment methods from raw retail sales data.

CREATE TABLE IF NOT EXISTS public.stg_dim_payment_method (
    payment_method VARCHAR(250)
);

INSERT INTO public.stg_dim_payment_method (payment_method)
SELECT DISTINCT
    "Payment Method"
FROM public."1778602684784_retail_sales";

SELECT * FROM public.stg_dim_payment_method;