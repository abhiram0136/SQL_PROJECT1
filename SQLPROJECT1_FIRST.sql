CREATE DATABASE SQLPROJECT1;
drop table if exists MOBILE_DATA	
CREATE TABLE MOBILE_DATA (
                   Product VARCHAR(20),
				   Brand VARCHAR(20),
				   ProductCode	VARCHAR(30),
				   ProductSpecification VARCHAR(190),
				   Price INT,
				   InwardDate DATE,
				   DispatchDate DATE,
				   QuantitySold INT,
				   Customer_name VARCHAR(30),
				   CustomerLocation	VARCHAR(30),
				   Region	VARCHAR(30),
				   CoreSpecification VARCHAR(30),
				   ProcessorSpecification VARCHAR(30),
				   RAM VARCHAR(30),
				   ROM VARCHAR(30),
				   SSD VARCHAR(30)

   
);

ALTER TABLE MOBILE_DATA
ALTER COLUMN ProductSpecification type varchar(400);
--data cleaning 

select*from MOBILE_DATA
where 
Product IS NULL OR
    Brand IS NULL OR
    ProductCode IS NULL OR
    ProductSpecification IS NULL OR
    Price IS NULL OR
    InwardDate IS NULL OR
    DispatchDate IS NULL OR
    QuantitySold IS NULL OR
    CustomerName IS NULL OR
    CustomerLocation IS NULL OR
    Region IS NULL OR
    CoreSpecification IS NULL OR
    ProcessorSpecification IS NULL OR
    RAM IS NULL OR
    ROM IS NULL OR
    SSD IS NULL;
-- data exloration

-- List all unique product types available in the dataset.
SELECT DISTINCT(product) as unique_products
from MOBILE_DATA;

-- Find the total number of sales records in the table
select count(*) as total_sales
from MOBILE_DATA
;
--Show all sales made by a specific brand, e.g., Samsung
SELECT * from
MOBILE_DATA
WHERE brand='Samsung';

--Retrieve the names of customers from the Central region
SELECT customername as Customer_name
from MOBILE_DATA
WHERE region='Central';

--Find the total quantity sold for each brand.
SELECT brand , SUM(quantitysold) total_quantity_brand
FROM MOBILE_DATA
GROUP BY brand;

--Get the details of sales where the quantity sold is greater than 3
SELECT *FROM 
MOBILE_DATA
WHERE quantitysold>3;

--Sort the dataset by price in descending order.
SELECT*FROM 
MOBILE_DATA
ORDER BY price DESC;

--Display only laptop sales records
SELECT*FROM
MOBILE_DATA 
where product='Laptop';

--Show product name, brand, and price of all sales

SELECT product as product_name,brand, price as price_of_allsales
FROM MOBILE_DATA;

--Find the average price of products sold by each brand.
SELECT AVG(price) 
FROM MOBILE_DATA
GROUP BY brand;

--Calculate total revenue (Price × Quantity Sold) per region.
SELECT region, sum(price*quantitysold) as TOTAL_REVENUE
FROM MOBILE_DATA
group by region;


--List customers who bought more than one unit of any product.
SELECT customername 
FROM MOBILE_DATA 
where quantitysold>1;

--Find top 3 brands with the highest quantity sold 
SELECT brand,sum(quantitysold) total_quantity
from MOBILE_DATA
group by brand
order by total_quantity desc
limit 3;

-- Get the number of products sold per RAM size
SELECT distinct ram ,COUNT(product) products_sold_per_ram_size
from MOBILE_DATA
group by ram;

-- WHICH RAM SIZE GENERATED THE HIGHEST REVENUE
select ram,sum(price*quantitysold) as revenue
from MOBILE_DATA
group by ram
order by revenue desc
limit 1;

--What is the average quantity of products sold per region, and which region performs the best on average?
SELECT region ,avg(quantitysold)  avg_quantity_sold
from MOBILE_DATA
group by region 
order by avg_quantity_sold desc
limit 1;
