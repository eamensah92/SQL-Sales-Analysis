/*
===============================================================
Script:    03_date_exploration.sql
Purpose:   Find the order date range and customer age range.
Tables:    fact_sales, dim_customers
Functions: MIN, MAX, DATEDIFF, GETDATE
===============================================================
*/

--To find the date of the first and last order
SELECT MIN (order_date) AS First_Order_Date,
       MAX (order_date) AS Last_Order_Date
from fact_sales

-- To find the number of years between the first order date and the last order date 
SELECT MIN (order_date) AS First_Order_Date,
       MAX (order_date) AS Last_Order_Date,
       DATEDIFF(year, MIN (order_date),MAX (order_date)) AS Order_Range_Years
from fact_sales

-- To find the number of months between the first order date and the last order date 
SELECT MIN (order_date) AS First_Order_Date,
       MAX (order_date) AS Last_Order_Date,
       DATEDIFF(month, MIN (order_date),MAX (order_date)) AS Order_Range_Months
from fact_sales

-- To find the youngest and oldest customer
SELECT MIN(birthdate) AS Oldest_Birthdate ,
       MAX(birthdate) AS Youngest_Birthdate
FROM dim_customers

-- To find the age of the youngest and oldest customer
SELECT MIN(birthdate) AS Oldest_Birthdate ,
       MAX(birthdate) AS Youngest_Birthdate,
       DATEDIFF(year, MIN(birthdate), GETDATE()) AS Oldest_Age,
       DATEDIFF(year, MAX(birthdate), GETDATE()) AS Youngest_Age
FROM dim_customers
