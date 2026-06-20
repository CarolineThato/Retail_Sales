--1. Eda
SELECT "Customer ID", "Customer Segment", "Loyalty Tier"
FROM  public."1778602684784_retail_sales"
--2. Create stg_Dim_Customer
CREATE TABLE stg_dim_customer(
customer_id VARCHAR(250),
customer_segment VARCHAR(250),
loyalty_tier VARCHAR(250)
);
--3. Insert data into stg_Dim_customer
insert into public.stg_dim_customer
select distinct "Customer ID", "Customer Segment", "Loyalty Tier"
from  public."1778602684784_retail_sales"
--4. Check the data in stg_Dim_Customer
SELECT *
FROM public.stg_dim_customer;
