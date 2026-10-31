/*
===============================================================
Script:    06_ranking_analysis.sql
Purpose:   Rank products and subcategories by revenue
           (top 5 and bottom 5).
Tables:    fact_sales, dim_products
Functions: TOP, SUM, GROUP BY, LEFT JOIN, ORDER BY
===============================================================
*/

--To find the 5 products which generate the highest revenue
SELECT TOP 5
       p.product_name,
       SUM(f.sales_amount) Total_revenue
FROM fact_sales f
LEFT JOIN dim_products p
ON p.product_key = f.product_key
GROUP BY p.product_name
ORDER BY Total_revenue DESC

 --To find the 5 products which generate the lowest revenue
SELECT TOP 5
       p.product_name,
       SUM(f.sales_amount) Total_revenue
FROM fact_sales f
LEFT JOIN dim_products p
ON p.product_key = f.product_key
GROUP BY p.product_name
ORDER BY Total_revenue ASC

 --To find the 5 subcategories which generate the highest revenue
SELECT TOP 5
       p.subcategory,
       SUM(f.sales_amount) Total_revenue
FROM fact_sales f
LEFT JOIN dim_products p
ON p.product_key = f.product_key
GROUP BY p.subcategory
ORDER BY Total_revenue DESC

 --To find the 5 subcategories which generate the lowest revenue
SELECT TOP 5
       p.subcategory,
       SUM(f.sales_amount) Total_revenue
FROM fact_sales f
LEFT JOIN dim_products p
ON p.product_key = f.product_key
GROUP BY p.subcategory
ORDER BY Total_revenue ASC
