-- Channel Dimension
--1. Eda
SELECT "Channel"
FROM public."1778602684784_retail_sales";
--2. Create stg_dim_channel
CREATE TABLE stg_dim_channel(
    channel VARCHAR(250)
);
--3. Insert data 
INSERT INTO public.stg_dim_channel
SELECT DISTINCT "Channel"
FROM public."1778602684784_retail_sales";
--4. Check data
SELECT * FROM public.stg_dim_channel;