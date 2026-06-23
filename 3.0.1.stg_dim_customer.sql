-- Customer staging dimension
-- Purpose: extract unique customer records and loyalty details from raw retail sales data.

-- Create the staging customer dimension table
CREATE TABLE IF NOT EXISTS public.stg_dim_customer (
    customer_id VARCHAR(250),
    customer_segment VARCHAR(250),
    loyalty_tier VARCHAR(250)
);

-- Load unique customer records from the raw source table
INSERT INTO public.stg_dim_customer (customer_id, customer_segment, loyalty_tier)
SELECT DISTINCT
    "Customer ID",
    "Customer Segment",
    "Loyalty Tier"
FROM public."1778602684784_retail_sales";

-- Verify load
SELECT *
FROM public.stg_dim_customer;
