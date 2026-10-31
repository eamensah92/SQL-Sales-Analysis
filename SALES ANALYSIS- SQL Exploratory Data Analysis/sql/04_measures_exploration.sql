/*
===============================================================
Script:    04_measures_exploration.sql
Purpose:   Calculate the key business metrics and combine them
           into a single report.
Tables:    fact_sales, dim_products, dim_customers
Functions: SUM, AVG, COUNT, COUNT DISTINCT, UNION ALL
===============================================================
*/

--To find the Total Sales
SELECT SUM(sales_amount) AS Total_Sales
FROM fact_sales

--To find how many items are sold
SELECT SUM(quantity) AS Total_Quantity
FROM fact_sales

--To find the Average selling price
SELECT AVG(price) AS Average_Selling_Price
FROM fact_sales 

--To find the Total number of Orders
SELECT COUNT(DISTINCT (order_number)) AS Total_Orders
FROM fact_sales 

--To find the Total number of Products
SELECT COUNT(DISTINCT(product_name)) AS Total_Products
FROM dim_products 

--To find the Total number of customers
SELECT COUNT(DISTINCT (customer_id)) AS Total_Customers
FROM dim_customers

--To find the number of customers that has placed an order
SELECT COUNT(DISTINCT (customer_key)) AS Total_Customers
FROM fact_sales


--To generate a report that shows all key metrics of the business
SELECT 'Total Sales' AS measure_name,
       SUM(sales_amount) AS measure_value
FROM fact_sales
UNION ALL
SELECT 'Total Quantity' AS measure_name,
       SUM(quantity) AS measure_value
FROM fact_sales
UNION ALL
SELECT 'Average Price',
       AVG(price) 
FROM fact_sales 
UNION ALL
SELECT 'Total Number of Orders',
       COUNT(DISTINCT order_number)
FROM fact_sales 
UNION ALL
SELECT 'Total Number of Products',
       COUNT (product_name)
FROM dim_products 
UNION ALL
SELECT 'Total Number of Customers',
       COUNT(customer_key)
FROM dim_customers
