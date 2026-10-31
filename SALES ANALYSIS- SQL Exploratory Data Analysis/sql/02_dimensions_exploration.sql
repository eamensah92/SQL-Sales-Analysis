/*
===============================================================
Script:    02_dimensions_exploration.sql
Purpose:   Explore the dimension values (countries, categories,
           subcategories, products).
Tables:    dim_customers, dim_products
Functions: DISTINCT, ORDER BY
===============================================================
*/

--To explore all countries the customers are from.
SELECT DISTINCT country
FROM dim_customers

-- To explore all Categories " The major Divisions".
SELECT DISTINCT category, subcategory, product_name
FROM dim_products
ORDER BY 1,2,3
