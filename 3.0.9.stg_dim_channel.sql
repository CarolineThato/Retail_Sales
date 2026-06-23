-- Channel staging dimension
-- Purpose: extract unique sales channels from raw retail sales data.

CREATE TABLE IF NOT EXISTS public.stg_dim_channel (
    channel VARCHAR(250)
);

INSERT INTO public.stg_dim_channel (channel)
SELECT DISTINCT
    "Channel"
FROM public."1778602684784_retail_sales";

SELECT * FROM public.stg_dim_channel;