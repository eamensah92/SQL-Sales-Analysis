/*
===============================================================
Script:    01_database_exploration.sql
Purpose:   Explore the structure of the database.
Tables:    INFORMATION_SCHEMA.TABLES, INFORMATION_SCHEMA.COLUMNS
===============================================================
*/

--To explore all objects in the database.
SELECT *
FROM INFORMATION_SCHEMA.TABLES

--To explore all columns in the database.
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
