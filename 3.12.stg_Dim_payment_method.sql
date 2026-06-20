-- Payment Method Dimension
--1. Eda
SELECT "Payment Method"
FROM public."1778602684784_retail_sales";
--2. Create stg_dim_payment_method
CREATE TABLE stg_dim_payment_method(
    payment_method VARCHAR(250)
);
--3. Insert data
INSERT INTO public.stg_dim_payment_method
SELECT DISTINCT "Payment Method"
FROM public."1778602684784_retail_sales";
--4.Check data
SELECT * FROM public.stg_dim_payment_method;