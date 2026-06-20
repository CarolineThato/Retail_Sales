-- Category Dimension
--1. Eda
SELECT "Category", "Subcategory", "Brand"
FROM public."1778602684784_retail_sales";
--2. Create stg_dim_category
CREATE TABLE stg_dim_category(
    category VARCHAR(250),
    subcategory VARCHAR(250),
    brand VARCHAR(250)
);
--3. Insert data 
INSERT INTO public.stg_dim_category
SELECT DISTINCT "Category", "Subcategory", "Brand"
FROM public."1778602684784_retail_sales";
--4. Check data
SELECT * FROM public.stg_dim_category;