-- Location staging dimension
-- Purpose: extract unique geographic locations from raw retail sales data.

-- Create the staging location dimension table
CREATE TABLE IF NOT EXISTS public.stg_dim_location (
    continent VARCHAR(250),
    country VARCHAR(250),
    city VARCHAR(250)
);

-- Load unique geographic location records
INSERT INTO public.stg_dim_location (continent, country, city)
SELECT DISTINCT
    "Continent",
    "Country",
    "City"
FROM public."1778602684784_retail_sales";

-- Verify load
SELECT *
FROM public.stg_dim_location;
