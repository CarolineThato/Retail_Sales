-- Category staging dimension
-- Purpose: extract unique category and brand details from raw retail sales data.

CREATE TABLE IF NOT EXISTS public.stg_dim_category (
    category VARCHAR(250),
    subcategory VARCHAR(250),
    brand VARCHAR(250)
);

INSERT INTO public.stg_dim_category (category, subcategory, brand)
SELECT DISTINCT
    "Category",
    "Subcategory",
    "Brand"
FROM public."1778602684784_retail_sales";

SELECT * FROM public.stg_dim_category;