--location
--1. Eda
SELECT "Continent", "Country", "City" 
FROM public."1778602684784_retail_sales";
--2. Create stg_Dim_location
CREATE TABLE stg_dim_location(
continent VARCHAR(250),
country VARCHAR(250),
city VARCHAR(250)
);
--3. Insert data into stg_Dim_location
insert into public.stg_dim_location
select distinct "Continent", "Country", "City" 
FROM public."1778602684784_retail_sales"
--4. Check the data in stg_Dim_location
select *
from public.stg_dim_location;
