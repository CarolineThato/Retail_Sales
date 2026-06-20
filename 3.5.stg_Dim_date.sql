-- Date Dimension
--1. Eda
SELECT "Purchase Date", "Ship Date", "Return Date"
FROM public."1778602684784_retail_sales";
--2. Create stg_dim_date
CREATE TABLE stg_dim_date(
    purchase_date varchar(250),
    ship_date varchar(250),
    return_date varchar(250)
);
--3. Insert data into stg_Dim_date
INSERT INTO public.stg_dim_date 
SELECT DISTINCT "Purchase Date", "Ship Date", "Return Date"
FROM public."1778602684784_retail_sales";
--4. Check the data
SELECT * FROM public.stg_dim_date;